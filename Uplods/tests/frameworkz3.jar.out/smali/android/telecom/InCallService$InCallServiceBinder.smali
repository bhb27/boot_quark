.class final Landroid/telecom/InCallService$InCallServiceBinder;
.super Lcom/android/internal/telecom/IInCallService$Stub;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InCallServiceBinder"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Lcom/android/internal/telecom/IInCallService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/telecom/InCallService;
    .param p2, "x1"    # Landroid/telecom/InCallService$1;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;)V

    return-void
.end method


# virtual methods
.method public addCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 160
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 161
    return-void
.end method

.method public bringToForeground(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 194
    return-void

    :cond_0
    move v0, v1

    .line 193
    goto :goto_0
.end method

.method public onAmModeChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 211
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 212
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 213
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 214
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 2
    .param p1, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 184
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 4
    .param p1, "canAddCall"    # Z

    .prologue
    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    return-void

    :cond_0
    move v0, v1

    .line 198
    goto :goto_0
.end method

.method public onMergeFailed(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 188
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 189
    return-void
.end method

.method public setInCallAdapter(Lcom/android/internal/telecom/IInCallAdapter;)V
    .locals 2
    .param p1, "inCallAdapter"    # Lcom/android/internal/telecom/IInCallAdapter;

    .prologue
    .line 155
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 156
    return-void
.end method

.method public setPostDial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 171
    return-void
.end method

.method public setPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 176
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 177
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 179
    return-void
.end method

.method public setSomcInCallAdapterExtend(Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;)V
    .locals 2
    .param p1, "inCallAdapterExtend"    # Lcom/sonymobile/internal/telecom/IInCallAdapterExtend;

    .prologue
    .line 204
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    return-void
.end method

.method public updateCall(Landroid/telecom/ParcelableCall;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/ParcelableCall;

    .prologue
    .line 165
    iget-object v0, p0, Landroid/telecom/InCallService$InCallServiceBinder;->this$0:Landroid/telecom/InCallService;

    # getter for: Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/telecom/InCallService;->access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 166
    return-void
.end method