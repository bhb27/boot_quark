.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/SeekBarVolumizer;
    .param p2, "x1"    # Landroid/preference/SeekBarVolumizer$1;

    .prologue
    .line 332
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 337
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 338
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$200(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 339
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # setter for: Landroid/preference/SeekBarVolumizer;->mLastProgress:I
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->access$302(Landroid/preference/SeekBarVolumizer;I)I

    .line 340
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v2, p1, Landroid/os/Message;->arg2:I

    # setter for: Landroid/preference/SeekBarVolumizer;->mLastAudibleStreamVolume:I
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->access$402(Landroid/preference/SeekBarVolumizer;I)I

    .line 341
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 342
    .local v0, "muted":Z
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 343
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # setter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->access$502(Landroid/preference/SeekBarVolumizer;Z)Z

    .line 344
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 345
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mCallback:Landroid/preference/SeekBarVolumizer$Callback;
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->access$600(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # getter for: Landroid/preference/SeekBarVolumizer;->mMuted:Z
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->access$500(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    # invokes: Landroid/preference/SeekBarVolumizer;->isZenMuted()Z
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->access$700(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 348
    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 351
    .end local v0    # "muted":Z
    :cond_1
    return-void
.end method

.method public postUpdateSlider(IIZ)V
    .locals 2
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .prologue
    .line 354
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 355
    return-void
.end method
