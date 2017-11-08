//
//  TableViewCell.h
//  Tarea5
//
//  Created by Cesar Roberto Rodriguez Silva on 06/11/17.
//  Copyright © 2017 2drink. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *ImagenLocal;
@property (strong, nonatomic) IBOutlet UIImageView *ImagenVisita;
@property (strong, nonatomic) IBOutlet UILabel *Local;
@property (strong, nonatomic) IBOutlet UILabel *Visita;
@property (strong, nonatomic) IBOutlet UILabel *Horario;

@end
