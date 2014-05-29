//
//  TWPhotoDetailViewController.m
//  Thousand Words

#import "TWPhotoDetailViewController.h"
#import "Photo.h"
#import "TWFiltersCollectionViewController.h"

@interface TWPhotoDetailViewController ()

@end

@implementation TWPhotoDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:YES];
    
    self.imageView.image = self.photo.image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"Filter Segue"])
    {
        if ([segue.destinationViewController isKindOfClass:[TWFiltersCollectionViewController class]])
        {
            TWFiltersCollectionViewController *targetViewController = segue.destinationViewController;
            targetViewController.photo = self.photo;
        }
    }
}

- (IBAction)addFilterButtonPressed:(UIButton *)sender
{
    
}

- (IBAction)deleteButtonPressed:(UIButton *)sender
{
    [[self.photo managedObjectContext] deleteObject:self.photo];
    
    NSError *error = nil;
    
    [[self.photo managedObjectContext] save:&error];
    
    if (error) {
        NSLog(@"Error");
    }
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
