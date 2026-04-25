def print_sequence(sequence):
    print("->".join(map(str,sequence)))
def fcfs(request_queue,head):
    total_seek=0
    sequence=[head]
    for request in request_queue:
        total_seek+=abs(head-request)
        head=request
        sequence.append(head)
    print("\n==FCFS==\n")
    print_sequence(sequence)
    print("Total Seek Distance:",total_seek)
n=int(input("Enter The number of disk requests:"))
request_queue=[]
for _ in range(n):
    request_queue.append(int(input()))
head=int(input("Enter intial head position"))
disk_size=int(input("Enter disk size"))
fcfs(request_queue,head)
