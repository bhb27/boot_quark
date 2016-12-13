.class public final Landroid/app/admin/PolicyNotification;
.super Ljava/lang/Object;
.source "PolicyNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearNotification(Landroid/content/Context;I)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I

    .prologue
    .line 235
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 239
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 241
    .local v2, "token":J
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static clearNotificationAsUser(Landroid/content/Context;ILandroid/os/UserHandle;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 251
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 255
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 257
    .local v2, "token":J
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, p1, p2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public static showAllowedWifiSsidPolicyNotification(Landroid/content/Context;)V
    .locals 0
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 229
    return-void
.end method

.method public static showApplicationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 32
    const v3, 0x10405c0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 34
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10405c1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108070f

    .line 38
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39
    return-void
.end method

.method public static showDeactivationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 71
    const v3, 0x10405cc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10405cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108070f

    .line 77
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public static showLocationFixedOnPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 58
    const v3, 0x1040655

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "title":Ljava/lang/String;
    const v3, 0x1040656

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108070f

    .line 64
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    return-void
.end method

.method public static showLocationPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 45
    const v3, 0x10405da

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 47
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10405db

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080361

    .line 51
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public static showMobileDataPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 146
    const v3, 0x1040638

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "title":Ljava/lang/String;
    const v3, 0x1040639

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108074b

    .line 152
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    return-void
.end method

.method public static showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    .line 97
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v4, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v1

    .line 104
    .local v1, "notification":Landroid/app/Notification;
    const-string/jumbo v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 108
    .local v0, "nm":Landroid/app/NotificationManager;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 110
    .local v2, "token":J
    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, p3, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 114
    return-void

    .line 112
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public static showPolicyNotificationwithIntentAsUser(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "iconId"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 163
    new-instance v0, Landroid/app/admin/PolicyNotification$1;

    move v1, p5

    move-object v2, p2

    move-object v3, p0

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move/from16 v6, p7

    move-object v7, p3

    move-object v8, p4

    move v9, p1

    invoke-direct/range {v0 .. v9}, Landroid/app/admin/PolicyNotification$1;-><init>(ILjava/lang/String;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;ILjava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/app/admin/PolicyNotification$1;->start()V

    .line 183
    return-void
.end method

.method public static showPolicyNotificationwithIntentAsUserWithOkCancel(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/content/Intent;Landroid/content/Intent;ILandroid/os/UserHandle;)V
    .locals 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "id"    # I
    .param p2, "notificationBar"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "text"    # Ljava/lang/String;
    .param p5, "iconId"    # I
    .param p6, "okIntent"    # Landroid/content/Intent;
    .param p7, "cancelIntent"    # Landroid/content/Intent;
    .param p8, "flags"    # I
    .param p9, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 191
    new-instance v0, Landroid/app/admin/PolicyNotification$2;

    move-object v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move v8, p1

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Landroid/app/admin/PolicyNotification$2;-><init>(Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V

    invoke-virtual {v0}, Landroid/app/admin/PolicyNotification$2;->start()V

    .line 222
    return-void
.end method

.method public static showRoamingDataLimitPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 120
    const v3, 0x10405d0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10405d1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108073d

    .line 126
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public static showSafeModePolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 84
    const v3, 0x10405fa

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "title":Ljava/lang/String;
    const v3, 0x10405fb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "info":Ljava/lang/String;
    const v0, 0x108070f

    .line 90
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method

.method public static showScreenshotPolicyNotification(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 133
    const v3, 0x1040610

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "title":Ljava/lang/String;
    const v3, 0x1040611

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "info":Ljava/lang/String;
    const v0, 0x1080758

    .line 139
    .local v0, "iconId":I
    invoke-static {p0, v2, v1, v0}, Landroid/app/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 140
    return-void
.end method
