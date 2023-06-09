echo "Run 1======================================================"
bash run_eval_var.sh /home/bloom-1b7 kiki_qae2squad 1000
sleep 10
echo "Run 2======================================================"
bash run_eval_var.sh /home/kilm-writing kiki_qae2squad 1000
sleep 10
echo "Run 3======================================================"
bash run_eval_var.sh /home/bloom-1b7 squad2 1000