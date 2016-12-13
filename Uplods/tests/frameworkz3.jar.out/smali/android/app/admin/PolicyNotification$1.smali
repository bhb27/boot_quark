.class final Landroid/app/admin/PolicyNotification$1;
.super Ljava/lang/Thread;
.source "PolicyNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/admin/PolicyNotification;->showPolicyNotificationwithIntentAsUser(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ILandroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ctx:Landroid/content/Context;

.field final synthetic val$flags:I

.field final synthetic val$iconId:I

.field final synthetic val$id:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$notificationBar:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$userHandle:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 163
    iput p1, p0, Landroid/app/admin/PolicyNotification$1;->val$iconId:I

    iput-object p2, p0, Landroid/app/admin/PolicyNotification$1;->val$notificationBar:Ljava/lang/String;

    iput-object p3, p0, Landroid/app/admin/PolicyNotification$1;->val$ctx:Landroid/content/Context;

    iput-object p4, p0, Landroid/app/admin/PolicyNotification$1;->val$intent:Landroid/content/Intent;

    iput-object p5, p0, Landroid/app/admin/PolicyNotification$1;->val$userHandle:Landroid/os/UserHandle;

    iput p6, p0, Landroid/app/admin/PolicyNotification$1;->val$flags:I

    iput-object p7, p0, Landroid/app/admin/PolicyNotification$1;->val$title:Ljava/lang/String;

    iput-object p8, p0, Landroid/app/admin/PolicyNotification$1;->val$text:Ljava/lang/String;

    iput p9, p0, Landroid/app/admin/PolicyNotification$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 165
    new-instance v7, Landroid/app/Notification;

    iget v0, p0, Landroid/app/admin/PolicyNotification$1;->val$iconId:I

    iget-object v1, p0, Landroid/app/admin/PolicyNotification$1;->val$notificationBar:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v7, v0, v1, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 168
    .local v7, "notification":Landroid/app/Notification;
    iget-object v0, p0, Landroid/app/admin/PolicyNotification$1;->val$ctx:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/app/admin/PolicyNotification$1;->val$intent:Landroid/content/Intent;

    const/high16 v3, 0x10000000

    iget-object v5, p0, Landroid/app/admin/PolicyNotification$1;->val$userHandle:Landroid/os/UserHandle;

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 170
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    iget v0, v7, Landroid/app/Notification;->flags:I

    iget v1, p0, Landroid/app/admin/PolicyNotification$1;->val$flags:I

    or-int/2addr v0, v1

    iput v0, v7, Landroid/app/Notification;->flags:I

    .line 172
    iget-object v0, p0, Landroid/app/admin/PolicyNotification$1;->val$ctx:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/admin/PolicyNotification$1;->val$title:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/PolicyNotification$1;->val$text:Ljava/lang/String;

    invoke-virtual {v7, v0, v1, v2, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 173
    iget-object v0, p0, Landroid/app/admin/PolicyNotification$1;->val$ctx:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 175
    .local v6, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 177
    .local v10, "token":J
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Landroid/app/admin/PolicyNotification$1;->val$id:I

    iget-object v2, p0, Landroid/app/admin/PolicyNotification$1;->val$userHandle:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v1, v7, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 181
    return-void

    .line 179
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method
