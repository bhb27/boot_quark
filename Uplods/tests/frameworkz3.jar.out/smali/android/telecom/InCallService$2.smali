.class Landroid/telecom/InCallService$2;
.super Landroid/telecom/Phone$Listener;
.source "InCallService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/InCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/InCallService;


# direct methods
.method constructor <init>(Landroid/telecom/InCallService;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-direct {p0}, Landroid/telecom/Phone$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAmModeChanged(Landroid/telecom/Phone;ILjava/lang/String;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "amMode"    # I
    .param p3, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2, p3}, Landroid/telecom/InCallService;->onAmModeChanged(ILjava/lang/String;)V

    .line 256
    return-void
.end method

.method public onAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/AudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "audioState"    # Landroid/telecom/AudioState;

    .prologue
    .line 221
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onAudioStateChanged(Landroid/telecom/AudioState;)V

    .line 222
    return-void
.end method

.method public onBringToForeground(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "showDialpad"    # Z

    .prologue
    .line 231
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onBringToForeground(Z)V

    .line 232
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 237
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAdded(Landroid/telecom/Call;)V

    .line 238
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/Phone;Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 225
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 226
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Phone;Landroid/telecom/Call;)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "call"    # Landroid/telecom/Call;

    .prologue
    .line 243
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCallRemoved(Landroid/telecom/Call;)V

    .line 244
    return-void
.end method

.method public onCanAddCallChanged(Landroid/telecom/Phone;Z)V
    .locals 1
    .param p1, "phone"    # Landroid/telecom/Phone;
    .param p2, "canAddCall"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Landroid/telecom/InCallService$2;->this$0:Landroid/telecom/InCallService;

    invoke-virtual {v0, p2}, Landroid/telecom/InCallService;->onCanAddCallChanged(Z)V

    .line 250
    return-void
.end method
