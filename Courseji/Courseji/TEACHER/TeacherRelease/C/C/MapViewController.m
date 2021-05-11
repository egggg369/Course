//
//  MapViewController.m
//  keji
//
//  Created by 王旭 on 2021/1/18.
//

#import "MapViewController.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <BMKLocationKit/BMKLocationComponent.h>

@interface MapViewController ()
@property (nonatomic, strong) BMKUserLocation *userLocation; //当前位置对象
@end

@implementation MapViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:250/255.0 green:250/255.0 blue:250/255.0 alpha:1];
    self.navigationItem.title = @"签到位置";
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"zuojiantou.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressBack)];
    backButton.tintColor = [UIColor blackColor];
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"right.png"] style:UIBarButtonItemStyleDone target:self action:@selector(pressRight)];
    rightButton.tintColor = [UIColor blackColor];
    [self.navigationItem setLeftBarButtonItem:backButton];
    [self.navigationItem setRightBarButtonItem:rightButton];
    
    _mapView = [[BMKMapView alloc] initWithFrame:CGRectMake(5,100, self.view.frame.size.width - 10, 300)];
    _mapView.delegate = self;
    [_mapView setZoomLevel:4];
    _mapView.showMapScaleBar = YES;
    _mapView.showsUserLocation = YES;
    _mapView.userTrackingMode = BMKUserTrackingModeFollow;
    BMKLocationViewDisplayParam *param = [[BMKLocationViewDisplayParam alloc] init];
    [self.mapView updateLocationViewWithParam:param];
    param.locationViewImage = [UIImage imageNamed:@"location.png"];
    param.isAccuracyCircleShow = YES;
    param.accuracyCircleStrokeColor = [UIColor colorWithRed:1 green:0 blue:0 alpha:0.5];
    param.accuracyCircleFillColor = [UIColor colorWithRed:0 green:1 blue:0 alpha:0.3];
    
    BMKLocationManager  *locationManager = [[BMKLocationManager alloc] init];
    
    [[BMKLocationAuth sharedInstance] checkPermisionWithKey:@"bR747ZK8VSv3eGCai8v3n3QszyiO0mgy" authDelegate:self];
    
    [locationManager startUpdatingLocation];
    [locationManager startUpdatingHeading];
    locationManager.delegate = self;
    locationManager.coordinateType = BMKLocationCoordinateTypeBMK09LL;
    locationManager.distanceFilter = kCLDistanceFilterNone;
    locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    locationManager.activityType = CLActivityTypeAutomotiveNavigation;
    locationManager.pausesLocationUpdatesAutomatically = NO;
    locationManager.allowsBackgroundLocationUpdates = YES;
    locationManager.locationTimeout = 3;
    locationManager.reGeocodeTimeout = 10;

    [locationManager requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(BMKLocation * _Nullable location, BMKLocationNetworkState state, NSError * _Nullable error) {
//        self.completionBlock = ^(BMKLocation *location, BMKLocationNetworkState state, NSError *error)
//            {
//                if (error)
//                {
//                    NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
//                }
//               if (location) {//得到定位信息，添加annotation
//
//                        if (location.location) {
//                            NSLog(@"LOC = %@",location.location);
//                        }
//                        if (location.rgcData) {
//                            NSLog(@"rgc = %@",[location.rgcData description]);
//                        }
//
//                        if (location.rgcData.poiList) {
//                            for (BMKLocationPoi * poi in location.rgcData.poiList) {
//                                NSLog(@"poi = %@, %@, %f, %@, %@", poi.name, poi.addr, poi.relaiability, poi.tags, poi.uid);
//                            }
//                        }
//
//                        if (location.rgcData.poiRegion) {
//                            NSLog(@"poiregion = %@, %@, %@", location.rgcData.poiRegion.name, location.rgcData.poiRegion.tags, location.rgcData.poiRegion.directionDesc);
//                        }
//
//                    }
//        }
    }];
    
    [self.view addSubview:_mapView];

}
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didFailWithError:(NSError * _Nullable)error {
    NSLog(@"定位失败");
}
- (void)BMKLocationManager:(BMKLocationManager *)manager didUpdateHeading:(CLHeading *)heading {
    if (!heading) {
        return;
    }
    if (!self.userLocation) {
        self.userLocation = [[BMKUserLocation alloc] init];
    }
    self.userLocation.heading = heading;
    [self.mapView updateLocationData:self.userLocation];
}
// 定位SDK中，位置变更的回调
- (void)BMKLocationManager:(BMKLocationManager *)manager didUpdateLocation:(BMKLocation *)location orError:(NSError *)error {
    if (error) {
        NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
    }
    if (!location) {
        return;
    }
    if (!self.userLocation) {
        self.userLocation = [[BMKUserLocation alloc] init];
    }
    self.userLocation.location = location.location;
    [self.mapView updateLocationData:self.userLocation];
}
- (void)pressBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)pressRight {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear: animated];
    [_mapView viewWillAppear];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear: animated];
    [_mapView viewWillDisappear];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
