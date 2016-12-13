.class public abstract Landroid/telecom/InCallService;
.super Landroid/app/Service;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/InCallService$VideoCall;,
        Landroid/telecom/InCallService$InCallServiceBinder;
    }
.end annotation


# static fields
.field private static final MSG_ADD_CALL:I = 0x2

.field private static final MSG_BRING_TO_FOREGROUND:I = 0x6

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x5

.field private static final MSG_ON_CAN_ADD_CALL_CHANGED:I = 0x7

.field private static final MSG_ON_MERGE_FAILED:I = 0x8

.field private static final MSG_ON_SOMC_AM_MODE_CHANGED:I = 0x65

.field private static final MSG_SET_IN_CALL_ADAPTER:I = 0x1

.field private static final MSG_SET_POST_DIAL_WAIT:I = 0x4

.field private static final MSG_SET_SOMC_IN_CALL_ADAPTER_EXTEND:I = 0x64

.field private static final MSG_UPDATE_CALL:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.InCallService"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/telecom/Phone;

.field private mPhoneListener:Landroid/telecom/Phone$Listener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 261
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 89
    new-instance v0, Landroid/telecom/InCallService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$1;-><init>(Landroid/telecom/InCallService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    .line 217
    new-instance v0, Landroid/telecom/InCallService$2;

    invoke-direct {v0, p0}, Landroid/telecom/InCallService$2;-><init>(Landroid/telecom/InCallService;)V

    iput-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    .line 262
    return-void
.end method

.method static synthetic access$000(Landroid/telecom/InCallService;)Landroid/telecom/Phone;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method static synthetic access$002(Landroid/telecom/InCallService;Landroid/telecom/Phone;)Landroid/telecom/Phone;
    .locals 0
    .param p0, "x0"    # Landroid/telecom/InCallService;
    .param p1, "x1"    # Landroid/telecom/Phone;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object p1
.end method

.method static synthetic access$100(Landroid/telecom/InCallService;)Landroid/telecom/Phone$Listener;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/telecom/InCallService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telecom/InCallService;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/telecom/InCallService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final canAddCall()Z
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public final getAudioState()Landroid/telecom/AudioState;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getAudioState()Landroid/telecom/AudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCallAudioState()Landroid/telecom/CallAudioState;
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCallAudioState()Landroid/telecom/CallAudioState;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Call;",
            ">;"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0}, Landroid/telecom/Phone;->getCalls()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhone()Landroid/telecom/Phone;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    return-object v0
.end method

.method public onAmModeChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 480
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/AudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/AudioState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 266
    new-instance v0, Landroid/telecom/InCallService$InCallServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telecom/InCallService$InCallServiceBinder;-><init>(Landroid/telecom/InCallService;Landroid/telecom/InCallService$1;)V

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 0
    .param p1, "showDialpad"    # Z

    .prologue
    .line 436
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 448
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 426
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 0
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 459
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 0
    .param p1, "canAddCall"    # Z

    .prologue
    .line 469
    return-void
.end method

.method public onPhoneCreated(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 392
    return-void
.end method

.method public onPhoneDestroyed(Landroid/telecom/Phone;)V
    .locals 0
    .param p1, "phone"    # Landroid/telecom/Phone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_0

    .line 272
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 273
    .local v0, "oldPhone":Landroid/telecom/Phone;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    .line 275
    invoke-virtual {v0}, Landroid/telecom/Phone;->destroy()V

    .line 279
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhoneListener:Landroid/telecom/Phone$Listener;

    invoke-virtual {v0, v1}, Landroid/telecom/Phone;->removeListener(Landroid/telecom/Phone$Listener;)V

    .line 281
    invoke-virtual {p0, v0}, Landroid/telecom/InCallService;->onPhoneDestroyed(Landroid/telecom/Phone;)V

    .line 284
    .end local v0    # "oldPhone":Landroid/telecom/Phone;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public final setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 374
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setAudioRoute(I)V

    .line 377
    :cond_0
    return-void
.end method

.method public final setMuted(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 350
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->setMuted(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public final somcExecuteCommandAsync(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "options"    # [Ljava/lang/String;

    .prologue
    .line 756
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/Phone;->somcExecuteCommandAsync(I[Ljava/lang/String;)V

    .line 759
    :cond_0
    return-void
.end method

.method public final somcGetCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v1, p1, p2}, Landroid/telecom/Phone;->somcGetCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    :cond_0
    return-object v0
.end method

.method public switchToOtherActiveSub(Ljava/lang/String;)V
    .locals 1
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 362
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Landroid/telecom/InCallService;->mPhone:Landroid/telecom/Phone;

    invoke-virtual {v0, p1}, Landroid/telecom/Phone;->switchToOtherActiveSub(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method
