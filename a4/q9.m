for lr = 0.03:0.02:0.3
   fprintf('learning rate: %s\n',lr)
   a4_main(300, .02, lr, 1000)
   fprintf('-----------------\n')
end