//
//  tablecontrollers.m
//  Tarea5
//
//  Created by Cesar Roberto Rodriguez Silva on 01/11/17.
//  Copyright © 2017 2drink. All rights reserved.
//

#import "tablecontrollers.h"
#import "TableViewCell.h"


@interface tablecontrollers ()

@property NSMutableArray *ArrayLocal;
@property NSMutableArray *ArrayVisita;
@property NSMutableArray *ArrayImageLocal;
@property NSMutableArray *ArrayImageVisita;
@property NSMutableArray *Arrayhorario;

@end

@implementation tablecontrollers

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (void)initController {
    self.ArrayLocal  = [[NSMutableArray alloc] initWithObjects: @"America", @"Chivas", @"Leon", @"Pumas", @"Atlas", nil];
    
    self.ArrayVisita  = [[NSMutableArray alloc] initWithObjects: @"Pumas", @"Atlas", @"Tigres", @"Atlas", @"America", nil];
    
    self.ArrayImageLocal = [[NSMutableArray alloc] initWithObjects: @"America.png", @"Chivas.png", @"Leon.png", @"Pumas.png", @"Atlas.png", nil];
    
    self.ArrayImageVisita = [[NSMutableArray alloc] initWithObjects: @"Pumas.png", @"Atlas.png", @"Tigres.jpg", @"Atlas.png", @"America.png", nil];
    
    self.Arrayhorario = [[NSMutableArray alloc] initWithObjects: @"7:00 PM", @"8:00 PM", @"9:00 PM", @"10:00 PM", @"11:00 PM", nil];
    
}



/**********************************************************************************************/
# pragma mark - Table source and delegate methods
/**********************************************************************************************/
    - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
        return 1;
    }
    //-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ArrayLocal.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    TableViewCell *cell = (TableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"TableViewCell" bundle:nil] forCellReuseIdentifier:@"TableViewCell"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell"];
    }
    
    //Fill cell with info from arrays
    cell.Local.text       = self.ArrayLocal[indexPath.row];
    cell.Visita.text       = self.ArrayVisita[indexPath.row];
    cell.Horario.text       = self.Arrayhorario[indexPath.row];
    
    cell.ImagenLocal.image    = [UIImage imageNamed:self.ArrayImageLocal[indexPath.row]];
    cell.ImagenVisita.image = [UIImage imageNamed:self.ArrayImageVisita [indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Pending
}


@end
