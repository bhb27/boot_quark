.class final Landroid/app/admin/PolicyNotification$2;
.super Ljava/lang/Thread;
.source "PolicyNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/admin/PolicyNotification;->showPolicyNotificationwithIntentAsUserWithOkCancel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelIntent:Landroid/content/Intent;

.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$iconId:I

.field final synthetic val$id:I

.field final synthetic val$notificationBar:Ljava/lang/String;

.field final synthetic val$okIntent:Landroid/content/Intent;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/admin/PolicyNotification$2;->val$okIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/app/admin/PolicyNotification$2;->val$cancelIntent:Landroid/content/Intent;

    iput-object p4, p0, Landroid/app/admin/PolicyNotification$2;->val$notificationBar:Ljava/lang/String;

    iput-object p5, p0, Landroid/app/admin/PolicyNotification$2;->val$title:Ljava/lang/String;

    iput-object p6, p0, Landroid/app/admin/PolicyNotification$2;->val$text:Ljava/lang/String;

    iput p7, p0, Landroid/app/admin/PolicyNotification$2;->val$iconId:I

    iput p8, p0, Landroid/app/admin/PolicyNotification$2;->val$id:I

    iput-object p9, p0, Landroid/app/admin/PolicyNotification$2;->val$userHandle:Landroid/os/UserHandle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 193
    iget-object v10, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040013

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 194
    .local v7, "yesString":Ljava/lang/String;
    iget-object v10, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$okIntent:Landroid/content/Intent;

    invoke-static {v10, v13, v11, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 195
    .local v6, "okPendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    invoke-direct {v10, v13, v7, v6}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    .line 196
    .local v1, "actionYes":Landroid/app/Notification$Action;
    iget-object v10, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1040009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, "noString":Ljava/lang/String;
    iget-object v10, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$cancelIntent:Landroid/content/Intent;

    invoke-static {v10, v13, v11, v13}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 199
    .local v2, "cancelPendingIntent":Landroid/app/PendingIntent;
    new-instance v10, Landroid/app/Notification$Action$Builder;

    invoke-direct {v10, v13, v4, v2}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v10}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 202
    .local v0, "actionNo":Landroid/app/Notification$Action;
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$notificationBar:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$title:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    new-instance v11, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v11}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v12, p0, Landroid/app/admin/PolicyNotification$2;->val$text:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v11, p0, Landroid/app/admin/PolicyNotification$2;->val$text:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    iget v11, p0, Landroid/app/admin/PolicyNotification$2;->val$iconId:I

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 212
    .local v5, "notification":Landroid/app/Notification;
    iget-object v10, p0, Landroid/app/admin/PolicyNotification$2;->val$ctx:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 214
    .local v3, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 216
    .local v8, "token":J
    const/4 v10, 0x0

    :try_start_0
    iget v11, p0, Landroid/app/admin/PolicyNotification$2;->val$id:I

    iget-object v12, p0, Landroid/app/admin/PolicyNotification$2;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v3, v10, v11, v5, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    return-void

    .line 218
    :catchall_0
    move-exception v10

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v10
.end method
