.class final Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;,
        Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$ResourceName;
    }
.end annotation


# static fields
.field private static final DEBUG_ICONS:Z = false

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final sDefaultFlags:I = 0x400

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDelegates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInstaller:Landroid/content/pm/PackageInstaller;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPM:Landroid/content/pm/IPackageManager;

.field private final mPermissionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsControllerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2216
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    .line 2217
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    .line 2219
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    return-void
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    .prologue
    .line 1128
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    .line 107
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    .line 1076
    const/4 v0, -0x1

    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 2222
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    .line 1129
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    .line 1130
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    .line 1131
    return-void
.end method

.method static configurationChanged()V
    .locals 2

    .prologue
    .line 1121
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1122
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1123
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1124
    monitor-exit v1

    .line 1125
    return-void

    .line 1124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getBadgeResIdForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 2145
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 2146
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2147
    const v1, 0x108033c

    .line 2149
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "tryBadgeInPlace"    # Z

    .prologue
    const/4 v8, 0x0

    .line 2092
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 2093
    .local v1, "badgedWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2094
    .local v0, "badgedHeight":I
    if-eqz p4, :cond_2

    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_2

    move-object v7, p1

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    .line 2099
    .local v4, "canBadgeInPlace":Z
    :goto_0
    if-eqz v4, :cond_3

    move-object v7, p1

    .line 2100
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2104
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2106
    .local v5, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_0

    .line 2107
    invoke-virtual {p1, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2108
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2111
    :cond_0
    if-eqz p3, :cond_6

    .line 2112
    iget v7, p3, Landroid/graphics/Rect;->left:I

    if-ltz v7, :cond_1

    iget v7, p3, Landroid/graphics/Rect;->top:I

    if-ltz v7, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-gt v7, v1, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v0, :cond_4

    .line 2114
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Badge location "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not in badged drawable bounds "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v8, v8, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canBadgeInPlace":Z
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    move v4, v8

    .line 2094
    goto :goto_0

    .line 2102
    .restart local v4    # "canBadgeInPlace":Z
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    .line 2118
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {p2, v8, v8, v7, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2120
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    .line 2121
    iget v7, p3, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p3, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2122
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2123
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    .line 2129
    :goto_2
    if-nez v4, :cond_7

    .line 2130
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2132
    .local v6, "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v7, :cond_5

    move-object v3, p1

    .line 2133
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 2134
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    .line 2140
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v6    # "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    :goto_3
    return-object v6

    .line 2125
    :cond_6
    invoke-virtual {p2, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2126
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    move-object v6, p1

    .line 2140
    goto :goto_3
.end method

.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .prologue
    .line 1135
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1136
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1139
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    .line 1140
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 1141
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    .line 1151
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v3

    .line 1157
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :goto_0
    return-object v2

    .line 1154
    .restart local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    .line 1157
    const/4 v2, 0x0

    goto :goto_0

    .line 1156
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    .prologue
    .line 1254
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1255
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1256
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    .line 1257
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 1258
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 1259
    monitor-exit v3

    .line 1265
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 1262
    .restart local v0    # "cs":Ljava/lang/CharSequence;
    :cond_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    monitor-exit v3

    .line 1265
    const/4 v0, 0x0

    goto :goto_0

    .line 1264
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getUserIfProfile(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 2153
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 2154
    .local v2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2155
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v3, p1, :cond_0

    .line 2159
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 10
    .param p0, "cmd"    # I
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "hasPkgInfo"    # Z

    .prologue
    .line 1168
    const/4 v3, 0x0

    .line 1169
    .local v3, "immediateGc":Z
    const/4 v8, 0x1

    if-ne p0, v8, :cond_0

    .line 1170
    const/4 v3, 0x1

    .line 1172
    :cond_0
    if-eqz p1, :cond_7

    array-length v8, p1

    if-lez v8, :cond_7

    .line 1173
    const/4 v5, 0x0

    .line 1174
    .local v5, "needCleanup":Z
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_5

    aget-object v7, v0, v2

    .line 1175
    .local v7, "ssp":Ljava/lang/String;
    sget-object v9, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v9

    .line 1176
    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 1177
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1178
    .local v6, "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1180
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1181
    const/4 v5, 0x1

    .line 1176
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1184
    .end local v6    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    :goto_2
    if-ltz v1, :cond_4

    .line 1185
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ApplicationPackageManager$ResourceName;

    .line 1186
    .restart local v6    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v6, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1188
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1189
    const/4 v5, 0x1

    .line 1184
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 1192
    .end local v6    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_4
    monitor-exit v9

    .line 1174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1192
    .end local v1    # "i":I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1194
    .end local v7    # "ssp":Ljava/lang/String;
    :cond_5
    if-nez v5, :cond_6

    if-eqz p2, :cond_7

    .line 1195
    :cond_6
    if-eqz v3, :cond_8

    .line 1197
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Runtime;->gc()V

    .line 1203
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "needCleanup":Z
    :cond_7
    :goto_3
    return-void

    .line 1199
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "len$":I
    .restart local v5    # "needCleanup":Z
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    goto :goto_3
.end method

.method private installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 7
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    .prologue
    .line 1395
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1396
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Only file:// URIs are supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_0
    if-eqz p6, :cond_1

    .line 1399
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "ContainerEncryptionParams not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1404
    .local v1, "originPath":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/app/PackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v2

    const/4 v6, 0x0

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1408
    :goto_0
    return-void

    .line 1406
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isPackageCandidateVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Z)Z
    .locals 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "allowExternal"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1626
    const-string/jumbo v2, "private"

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1627
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1651
    :cond_1
    :goto_0
    return v0

    .line 1632
    :cond_2
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    if-eq v2, v1, :cond_1

    iget v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1639
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1644
    if-eqz p2, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->isOwner()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isDefaultPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1647
    :cond_3
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v0

    goto :goto_0

    .line 1644
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1651
    :cond_5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_6

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_6
    move v1, v0

    goto :goto_1
.end method

.method private static isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1701
    const-string/jumbo v2, "private"

    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1711
    :cond_0
    :goto_0
    return v0

    .line 1706
    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 1707
    goto :goto_0

    .line 1711
    :cond_2
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v2

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 315
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 316
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "runtimeIsa":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 321
    .local v2, "secondaryIsa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ro.dalvik.vm.isa."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 331
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_0
    return-void

    .restart local v0    # "runtimeIsa":Ljava/lang/String;
    .restart local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .restart local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    .line 322
    goto :goto_0
.end method

.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1161
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1162
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    monitor-exit v1

    .line 1165
    return-void

    .line 1164
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 1269
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1270
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    monitor-exit v1

    .line 1272
    return-void

    .line 1271
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    .prologue
    .line 2039
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    :goto_0
    return-void

    .line 2041
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .prologue
    .line 1090
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    .line 1091
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1092
    monitor-exit v3

    .line 1103
    :goto_0
    return-void

    .line 1094
    :cond_0
    new-instance v0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p1, v2}, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 1098
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1102
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1099
    .restart local v0    # "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    :catch_0
    move-exception v1

    .line 1100
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1773
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1777
    :goto_0
    return-void

    .line 1774
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 459
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 460
    :catch_0
    move-exception v0

    .line 461
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    .prologue
    .line 468
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 1802
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1806
    :goto_0
    return-void

    .line 1803
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .prologue
    .line 1812
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1816
    :goto_0
    return-void

    .line 1813
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 424
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 425
    :catch_0
    move-exception v0

    .line 426
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(II)I
    .locals 3
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    .prologue
    .line 545
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    .prologue
    .line 536
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 1727
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1731
    :goto_0
    return-void

    .line 1728
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearCrossProfileIntentFilters(I)V
    .locals 2
    .param p1, "sourceUserId"    # I

    .prologue
    .line 2052
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    :goto_0
    return-void

    .line 2053
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1842
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1846
    :goto_0
    return-void

    .line 1843
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 1736
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1740
    :goto_0
    return-void

    .line 1737
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I

    .prologue
    .line 1717
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, v1, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1721
    :goto_0
    return-void

    .line 1718
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J

    .prologue
    .line 1438
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_0
    return-void

    .line 1439
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "pi"    # Landroid/content/IntentSender;

    .prologue
    .line 1755
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1759
    :goto_0
    return-void

    .line 1756
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "idealStorageSize"    # J
    .param p4, "observer"    # Landroid/content/pm/IPackageDataObserver;

    .prologue
    .line 1746
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1750
    :goto_0
    return-void

    .line 1747
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 916
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 922
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 923
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 929
    :goto_0
    return-object v1

    .line 926
    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 928
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 929
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 932
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 881
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 886
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 887
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 893
    :goto_0
    return-object v1

    .line 890
    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 892
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 893
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 896
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 339
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 340
    return-object v0

    .line 342
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 346
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 949
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 956
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 962
    :goto_0
    return-object v1

    .line 959
    :cond_0
    const/high16 v1, 0x10000

    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 961
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    .line 962
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 965
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1486
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1489
    :goto_0
    return-object v1

    .line 1487
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 937
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 943
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1903
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1907
    :goto_0
    return v0

    .line 1904
    :catch_0
    move-exception v0

    .line 1907
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1925
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1929
    :goto_0
    return v0

    .line 1926
    :catch_0
    move-exception v0

    .line 1929
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 905
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 910
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 296
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 297
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 301
    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    return-object v0

    .line 304
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 308
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1335
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 970
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 976
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 1882
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1886
    :goto_0
    return v0

    .line 1883
    :catch_0
    move-exception v0

    .line 1886
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 900
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrowserPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 1496
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1499
    :goto_0
    return-object v1

    .line 1497
    :catch_0
    move-exception v0

    .line 1499
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v5, 0x0

    .line 823
    new-instance v3, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v3, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 824
    .local v3, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v3}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 825
    .local v0, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 876
    .end local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .line 829
    .restart local v0    # "cachedIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    if-nez p3, :cond_1

    .line 831
    const/16 v6, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v6}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 837
    :cond_1
    if-eqz p2, :cond_3

    .line 839
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v4

    .line 840
    .local v4, "r":Landroid/content/res/Resources;
    const/4 v6, 0x0

    invoke-virtual {v4, p2, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 841
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    .line 842
    invoke-direct {p0, v3, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    move-object v0, v1

    .line 860
    goto :goto_0

    .line 832
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v4    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v0, v5

    .line 833
    goto :goto_0

    .line 861
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 862
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving resources for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_3
    :goto_1
    move-object v0, v5

    .line 876
    goto :goto_0

    .line 864
    :catch_2
    move-exception v2

    .line 865
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving resources for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 867
    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v2

    .line 870
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure retrieving icon 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .prologue
    .line 1862
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1866
    :goto_0
    return-object v0

    .line 1863
    :catch_0
    move-exception v0

    .line 1866
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 619
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 620
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 621
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 586
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 593
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 594
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 595
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1526
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1530
    :goto_0
    return-object v0

    .line 1527
    :catch_0
    move-exception v0

    .line 1530
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 797
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 799
    .local v1, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_0

    .line 800
    return-object v1

    .line 802
    .end local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    .line 803
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 806
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1479
    :goto_0
    return-object v1

    .line 1477
    :catch_0
    move-exception v0

    .line 1479
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIntentVerificationStatus(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1456
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1459
    :goto_0
    return v1

    .line 1457
    :catch_0
    move-exception v0

    .line 1459
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 1935
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1936
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1939
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1943
    :goto_0
    return-object v1

    .line 1940
    :catch_0
    move-exception v0

    .line 1941
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 167
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 173
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 175
    :cond_0
    const-string v3, "android.intent.category.INFO"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    .line 176
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 180
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 181
    :cond_2
    const/4 v0, 0x0

    .line 187
    :goto_0
    return-object v0

    .line 183
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 185
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 193
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string v3, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    .line 199
    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    return-object v0

    .line 201
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 203
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public getMoveStatus(I)I
    .locals 2
    .param p1, "moveId"    # I

    .prologue
    .line 1536
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 1537
    :catch_0
    move-exception v0

    .line 1538
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 563
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 9
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1610
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v8}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 1611
    .local v4, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 1612
    .local v2, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v6

    .line 1613
    .local v6, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1614
    .local v1, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200d2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1616
    .local v0, "allowExternal":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/VolumeInfo;

    .line 1617
    .local v5, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {p1, v5, v0}, Landroid/app/ApplicationPackageManager;->isPackageCandidateVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1618
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1621
    .end local v5    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    return-object v1
.end method

.method public getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .locals 4
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 1595
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x11200d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1597
    .local v0, "allowExternal":Z
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 1598
    .local v1, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1599
    const-string/jumbo v2, "private"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    .line 1604
    :goto_0
    return-object v2

    .line 1600
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1601
    if-eqz v0, :cond_1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getDefaultPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v2

    goto :goto_0

    .line 1604
    :cond_2
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    goto :goto_0
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 212
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 213
    .local v1, "gids":[I
    if-eqz v1, :cond_0

    .line 214
    return-object v1

    .line 216
    .end local v1    # "gids":[I
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 220
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gids":[I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 134
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 135
    return-object v1

    .line 137
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 8

    .prologue
    .line 2010
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2011
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 2013
    :try_start_1
    new-instance v0, Landroid/content/pm/PackageInstaller;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v3

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2019
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;

    monitor-exit v7

    return-object v0

    .line 2015
    :catch_0
    move-exception v6

    .line 2016
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 2020
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    .prologue
    .line 1765
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1769
    :goto_0
    return-void

    .line 1766
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 227
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 228
    .local v1, "uid":I
    if-ltz v1, :cond_0

    .line 229
    return v1

    .line 231
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 235
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 554
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    .line 606
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 608
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 609
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    .line 610
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 444
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 447
    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 452
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;

    monitor-exit v2

    return-object v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 453
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 506
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 507
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 272
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 273
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 274
    return-object v1

    .line 276
    .end local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 280
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 242
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 243
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    .line 244
    return-object v1

    .line 246
    .end local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 250
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 1
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1852
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1856
    :goto_0
    return v0

    .line 1853
    :catch_0
    move-exception v0

    .line 1856
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1791
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1795
    :goto_0
    return-object v0

    .line 1792
    :catch_0
    move-exception v0

    .line 1795
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1681
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 1682
    .local v3, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    move-result-object v1

    .line 1683
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v5

    .line 1684
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const-string/jumbo v6, "primary_physical"

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    .line 1688
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1696
    :cond_0
    return-object v0

    .line 1690
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    .line 1691
    .local v4, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v4, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/app/ApplicationPackageManager;->isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1692
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    .prologue
    .line 1674
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    const-class v3, Landroid/os/storage/StorageManager;

    invoke-virtual {v2, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1675
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    move-result-object v1

    .line 1676
    .local v1, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v2

    return-object v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 384
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    .line 385
    return-object v1

    .line 387
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 391
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 353
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 354
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    .line 355
    return-object v0

    .line 357
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    .line 358
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 361
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1025
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1032
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1042
    :cond_0
    return-object v8

    .line 1035
    :cond_1
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 v9, 0x1

    .line 1036
    .local v9, "sameUid":Z
    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    if-eqz v9, :cond_3

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    :goto_1
    if-eqz v9, :cond_4

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    :goto_2
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v7, v7, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1041
    .local v8, "r":Landroid/content/res/Resources;
    if-nez v8, :cond_0

    .line 1044
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "sameUid":Z
    :cond_2
    move v9, v5

    .line 1035
    goto :goto_0

    .line 1036
    .restart local v9    # "sameUid":Z
    :cond_3
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    goto :goto_2
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1050
    const/16 v0, 0x400

    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1058
    if-gez p2, :cond_0

    .line 1059
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call does not support special user #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1062
    :cond_0
    const-string/jumbo v2, "system"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1063
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1068
    :goto_0
    return-object v2

    .line 1066
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    const/16 v3, 0x400

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1067
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    .line 1068
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1070
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1071
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1073
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 369
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    .line 370
    return-object v1

    .line 372
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 376
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1949
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1952
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1956
    :goto_0
    return-object v1

    .line 1953
    :catch_0
    move-exception v0

    .line 1954
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 3

    .prologue
    .line 406
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 397
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v4, 0x0

    .line 1277
    new-instance v1, Landroid/app/ApplicationPackageManager$ResourceName;

    invoke-direct {v1, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    .line 1278
    .local v1, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1279
    .local v3, "text":Ljava/lang/CharSequence;
    if-eqz v3, :cond_0

    move-object v4, v3

    .line 1304
    :goto_0
    return-object v4

    .line 1282
    :cond_0
    if-nez p3, :cond_1

    .line 1284
    const/16 v5, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1290
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1291
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1292
    invoke-direct {p0, v1, v3}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v3

    .line 1293
    goto :goto_0

    .line 1285
    .end local v2    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 1286
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1294
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1295
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving resources for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1297
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v0

    .line 1300
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure retrieving text 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 573
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 574
    .local v1, "uid":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 575
    return v1

    .line 577
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 580
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No shared userid for user:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    .prologue
    .line 1001
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1002
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    if-gtz p2, :cond_0

    .line 1004
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget p2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1006
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x108033a

    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1009
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    .prologue
    .line 992
    invoke-virtual {p0, p2, p4}, Landroid/app/ApplicationPackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 993
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 996
    .end local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .restart local p1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const/4 v3, 0x0

    .line 981
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getBadgeResIdForUser(I)I

    move-result v1

    .line 982
    .local v1, "badgeResId":I
    if-nez v1, :cond_0

    .line 986
    .end local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object p1

    .line 985
    .restart local p1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    const-string/jumbo v2, "system"

    invoke-virtual {p0, v2, v1, v3}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 986
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v3, v2}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1014
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1015
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1016
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040580

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1019
    .end local p1    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object p1
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    .prologue
    .line 121
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    monitor-exit v1

    return-object v0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .prologue
    .line 1989
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1993
    :goto_0
    return-object v0

    .line 1990
    :catch_0
    move-exception v0

    .line 1993
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x0

    .line 1310
    if-nez p3, :cond_0

    .line 1312
    const/16 v3, 0x400

    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    .line 1318
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    .line 1319
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 1330
    .end local v1    # "r":Landroid/content/res/Resources;
    :goto_0
    return-object v2

    .line 1313
    :catch_0
    move-exception v0

    .line 1314
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 1320
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 1323
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving xml 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1326
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v0

    .line 1327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure retrieving resources for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 415
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 416
    :catch_0
    move-exception v0

    .line 417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1414
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 1415
    .local v1, "res":I
    const/4 v2, -0x3

    if-ne v1, v2, :cond_0

    .line 1416
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1419
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    .line 1421
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1418
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_0
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1368
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    move-object v8, v1

    .line 1370
    invoke-direct/range {v2 .. v8}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1371
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1341
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 1343
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    new-instance v4, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    invoke-direct {v4, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    move-object v2, p0

    move-object v3, p1

    move v5, p3

    move-object v6, p4

    move-object v7, v0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1345
    return-void
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationURI"    # Landroid/net/Uri;
    .param p6, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p7, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    .prologue
    const/4 v2, 0x0

    .line 1378
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v1, p5

    move-object v3, v2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    move-object v7, p7

    .line 1380
    invoke-direct/range {v1 .. v7}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1382
    return-void
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationURI"    # Landroid/net/Uri;
    .param p6, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p7, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    .prologue
    const/4 v2, 0x0

    .line 1351
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v1, p5

    move-object v3, v2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 1353
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    new-instance v3, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    invoke-direct {v3, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move-object v6, v0

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1355
    return-void
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 0
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    .prologue
    .line 1388
    invoke-direct/range {p0 .. p6}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1390
    return-void
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 7
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    .prologue
    .line 1361
    new-instance v2, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    invoke-direct {v2, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    .line 1363
    return-void
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2026
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 2027
    :catch_0
    move-exception v0

    .line 2028
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 433
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSafeMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1079
    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    if-gez v3, :cond_0

    .line 1080
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    .line 1082
    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    :goto_1
    return v1

    :cond_1
    move v3, v2

    .line 1080
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1082
    goto :goto_1

    .line 1083
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 1962
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1963
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1965
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1967
    :goto_0
    return v1

    .line 1966
    :catch_0
    move-exception v0

    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    .prologue
    .line 1974
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1975
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1977
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1979
    :goto_0
    return v1

    .line 1978
    :catch_0
    move-exception v0

    .line 1979
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUpgrade()Z
    .locals 2

    .prologue
    .line 2002
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2004
    :goto_0
    return v1

    .line 2003
    :catch_0
    move-exception v0

    .line 2004
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2062
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2063
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 2066
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v0

    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 2073
    iget v2, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_2

    .line 2074
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    move-result-object v2

    iget v3, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2075
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 2076
    iget v2, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2087
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object v1

    .line 2078
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2080
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .line 2081
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 2082
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    invoke-virtual {p0, v2, v3, p2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2084
    :cond_3
    if-nez v1, :cond_0

    .line 2085
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method

.method public movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 1576
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x11200d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1579
    .local v0, "allowExternal":Z
    const-string/jumbo v3, "private"

    iget-object v4, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1580
    sget-object v2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 1587
    .local v2, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    return v3

    .line 1581
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isDefaultPrimaryPhysical()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1582
    :cond_1
    const-string/jumbo v2, "primary_physical"

    .restart local v2    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 1581
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1584
    :cond_3
    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 1588
    .end local v0    # "allowExternal":Z
    .end local v2    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1589
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    .prologue
    .line 1658
    :try_start_0
    const-string/jumbo v2, "private"

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1659
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    .line 1666
    .local v1, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 1660
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1661
    const-string/jumbo v1, "primary_physical"

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 1663
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 1667
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1668
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 708
    :catch_0
    move-exception v0

    .line 709
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 784
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 786
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 787
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    :catch_0
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 647
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 15
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 669
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 671
    .local v12, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 672
    .local v4, "specificTypes":[Ljava/lang/String;
    if-eqz p2, :cond_2

    .line 673
    move-object/from16 v0, p2

    array-length v9, v0

    .line 674
    .local v9, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    .line 675
    aget-object v13, p2, v11

    .line 676
    .local v13, "sp":Landroid/content/Intent;
    if-eqz v13, :cond_1

    .line 677
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    .line 678
    .local v14, "t":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 679
    if-nez v4, :cond_0

    .line 680
    new-array v4, v9, [Ljava/lang/String;

    .line 682
    :cond_0
    aput-object v14, v4, v11

    .line 674
    .end local v14    # "t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 689
    .end local v9    # "N":I
    .end local v11    # "i":I
    .end local v13    # "sp":Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    move-result v8

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v7, p4

    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 692
    :catch_0
    move-exception v10

    .line 693
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 753
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 746
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 734
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 257
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 258
    .local v1, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_0

    .line 259
    return-object v1

    .line 261
    .end local v1    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 265
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1544
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v3

    .line 1545
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1548
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1553
    monitor-exit v3

    .line 1554
    return-void

    .line 1549
    :catch_0
    move-exception v1

    .line 1550
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1553
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    .prologue
    .line 1107
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    monitor-enter v3

    .line 1108
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    .local v0, "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    if-eqz v0, :cond_0

    .line 1111
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    .line 1112
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1117
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 1118
    return-void

    .line 1113
    :catch_0
    move-exception v1

    .line 1114
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v4, "Package manager has died"

    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1117
    .end local v0    # "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1782
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1786
    :goto_0
    return-void

    .line 1783
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 477
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 481
    return-void

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    .prologue
    .line 1822
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1826
    :goto_0
    return-void

    .line 1823
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 6
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    .prologue
    .line 1833
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1837
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 628
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 634
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .prologue
    .line 767
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .prologue
    .line 774
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 775
    :catch_0
    move-exception v0

    .line 776
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .prologue
    .line 721
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1893
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v4

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1898
    :goto_0
    return-void

    .line 1895
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 1914
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p1, p2, v1}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1919
    :goto_0
    return v0

    .line 1916
    :catch_0
    move-exception v0

    .line 1919
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1873
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    :goto_0
    return-void

    .line 1874
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 1506
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1509
    :goto_0
    return v1

    .line 1507
    :catch_0
    move-exception v0

    .line 1509
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    .prologue
    .line 1517
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1521
    :goto_0
    return-void

    .line 1518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 526
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    move-result v3

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Package manager has died"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;

    .prologue
    .line 1558
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1559
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1560
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    .line 1561
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    iget-object v3, v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_0

    .line 1563
    :try_start_1
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1567
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1570
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1564
    .restart local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catch_0
    move-exception v1

    .line 1565
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    .line 1570
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1571
    return-void
.end method

.method public updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    .prologue
    .line 1466
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1469
    :goto_0
    return v1

    .line 1467
    :catch_0
    move-exception v0

    .line 1469
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 516
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    return-void

    .line 518
    :catch_0
    move-exception v6

    .line 519
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Package manager has died"

    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p3, "outFailedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1451
    :goto_0
    return-void

    .line 1448
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "response"    # I

    .prologue
    .line 1428
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :goto_0
    return-void

    .line 1429
    :catch_0
    move-exception v0

    goto :goto_0
.end method
