//
//  ViewController.m
//  2PlayerMath
//
//  Created by Elle Ti on 2017-07-31.
//  Copyright © 2017 Elle Ti. All rights reserved.
//

#import "ViewController.h"
#import "GameModel.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UITextField *answerTextField;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;

@property (nonatomic) GameModel *gameModel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.gameModel = [[GameModel alloc] init];
    
    self.answerLabel.text = @"";
    [self questionGenerator];
    [self updatePlayerStats];
}

- (void)updatePlayerStats
{
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"Player 1: %ld, lives: %ld", self.gameModel.player1.score, self.gameModel.player1.lives];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"Player 2: %ld, lives: %ld", self.gameModel.player2.score, self.gameModel.player2.lives];
}

- (void)questionGenerator
{
    self.questionLabel.text = [self.gameModel questionGenerator];
    self.answerTextField.text = @"";
}

- (NSString *)displayText:(NSString *)number
{
    return [self.answerTextField.text stringByAppendingString:number];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)enterButton:(UIButton *)sender
{
    NSString *inputString = self.answerTextField.text;
    NSInteger inputInteger = [inputString integerValue];
    NSString *answerString  = [self.gameModel playerAnswer:inputInteger];
    self.answerLabel.text = answerString;
    
    [self updatePlayerStats];
    [self.gameModel switchToNextPlayer];
    [self questionGenerator];
}

- (IBAction)number1Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"1"];
}

- (IBAction)number2Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"2"];
}

- (IBAction)number3Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"3"];
}

- (IBAction)number4Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"4"];
}

- (IBAction)number5Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"5"];
}

- (IBAction)number6Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"6"];
}

- (IBAction)number7Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"7"];
}

- (IBAction)number8Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"8"];
}

- (IBAction)number9Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"9"];
}

- (IBAction)number0Button:(UIButton *)sender
{
    self.answerTextField.text = [self displayText:@"0"];
}

- (IBAction)deleteButton:(UIButton *)sender
{
    self.answerTextField.text = @"";
}


@end
