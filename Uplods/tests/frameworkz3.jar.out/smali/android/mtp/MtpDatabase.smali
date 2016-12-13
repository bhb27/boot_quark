.class public Landroid/mtp/MtpDatabase;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/mtp/MtpDatabase$PropValueType;
    }
.end annotation


# static fields
.field private static final ANCHOR_FOLDER:Ljava/lang/String; = ".anchor"

.field static final AUDIO_ALBUM_PROPERTIES:[I

.field static final AUDIO_PROPERTIES:[I

.field private static final BATTERY_MAX_VALUE:I = 0x64

.field private static final DEVICE_PROPERTIES_DATABASE_VERSION:I = 0x1

.field private static final DEVICE_UUID:Ljava/lang/String; = "device_uuid"

.field static final FILE_PROPERTIES:[I

.field private static final FORMAT_PARENT_WHERE:Ljava/lang/String; = "format=? AND parent=?"

.field private static final FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final FORMAT_WHERE:Ljava/lang/String; = "format=?"

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field private static final ID_WHERE:Ljava/lang/String; = "_id=?"

.field static final IMAGE_PROPERTIES:[I

.field private static final OBJECT_INFO_PROJECTION:[Ljava/lang/String;

.field private static final PARENT_WHERE:Ljava/lang/String; = "parent=?"

.field private static final PATH_FORMAT_PROJECTION:[Ljava/lang/String;

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATH_WHERE:Ljava/lang/String; = "_data=?"

.field private static final STORAGE_FORMAT_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND format=? AND parent=?"

.field private static final STORAGE_FORMAT_WHERE:Ljava/lang/String; = "storage_id=? AND format=?"

.field private static final STORAGE_PARENT_WHERE:Ljava/lang/String; = "storage_id=? AND parent=?"

.field private static final STORAGE_WHERE:Ljava/lang/String; = "storage_id=?"

.field private static final TAG:Ljava/lang/String; = "MtpDatabase"

.field static final VIDEO_PROPERTIES:[I


# instance fields
.field private mBatteryLevel:I

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryScale:I

.field private mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

.field private mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

.field private final mContext:Landroid/content/Context;

.field private mDatabaseModified:Z

.field private mDeviceProperties:Landroid/content/SharedPreferences;

.field private mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

.field private final mMediaProvider:Landroid/content/IContentProvider;

.field private final mMediaScanner:Landroid/media/MediaScanner;

.field private final mMediaStoragePath:Ljava/lang/String;

.field private mNativeContext:J

.field private final mObjectsUri:Landroid/net/Uri;

.field private final mPackageName:Ljava/lang/String;

.field private final mPropertyGroupsByFormat:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyGroupsByProperty:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/mtp/MtpPropertyGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mReferencesTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mServer:Landroid/mtp/MtpServer;

.field private final mStorageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/mtp/MtpStorage;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubDirectories:[Ljava/lang/String;

.field private mSubDirectoriesWhere:Ljava/lang/String;

.field private mSubDirectoriesWhereArgs:[Ljava/lang/String;

.field private final mVolumeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    sput-object v0, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    .line 114
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_PROJECTION:[Ljava/lang/String;

    .line 118
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "format"

    aput-object v1, v0, v3

    sput-object v0, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    sput-object v0, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "storage_id"

    aput-object v1, v0, v3

    const-string v1, "format"

    aput-object v1, v0, v4

    const-string/jumbo v1, "parent"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_added"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "date_modified"

    aput-object v2, v0, v1

    sput-object v0, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 680
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    .line 697
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    .line 728
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    .line 764
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    .line 785
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    return-void

    .line 680
    :array_0
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
    .end array-data

    .line 697
    :array_1
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc46
        0xdc9a
        0xdc9b
        0xdc8b
        0xdc99
        0xdc89
        0xdc8c
        0xdc96
        0xde99
        0xde92
        0xde9a
        0xde94
        0xde93
    .end array-data

    .line 728
    :array_2
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc46
        0xdc9a
        0xdc8b
        0xdc89
        0xdc48
        0xde97
        0xde9b
        0xde9c
        0xde9d
        0xdea1
        0xdc87
        0xdc88
        0xde93
        0xde94
        0xde99
        0xde9a
    .end array-data

    .line 764
    :array_3
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc48
        0xdc87
        0xdc88
    .end array-data

    .line 785
    :array_4
    .array-data 4
        0xdc01
        0xdc02
        0xdc03
        0xdc04
        0xdc07
        0xdc09
        0xdc0b
        0xdc41
        0xdc44
        0xdce0
        0xdc4e
        0xdc4f
        0xdc9b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "volumeName"    # Ljava/lang/String;
    .param p3, "storagePath"    # Ljava/lang/String;
    .param p4, "subDirectories"    # [Ljava/lang/String;

    .prologue
    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    .line 97
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    .line 101
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    .line 158
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    new-instance v10, Landroid/mtp/MtpDatabase$1;

    invoke-direct {v10, p0}, Landroid/mtp/MtpDatabase$1;-><init>(Landroid/mtp/MtpDatabase;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_setup()V

    .line 188
    invoke-static {p1}, Landroid/mtp/MtpDeviceServiceDBHelper;->getInstance(Landroid/content/Context;)Landroid/mtp/MtpDeviceServiceDBHelper;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    .line 189
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v10}, Landroid/mtp/MtpDeviceServiceDBHelper;->initServicePropsTable()V

    .line 191
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "media"

    invoke-virtual {v10, v11}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    .line 194
    iput-object p2, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    .line 195
    move-object/from16 v0, p3

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    .line 196
    invoke-static {p2}, Lcom/sonyericsson/provider/SemcMediaStore$ExtendedFiles;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    .line 197
    new-instance v10, Landroid/media/MediaScanner;

    invoke-direct {v10, p1}, Landroid/media/MediaScanner;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    .line 198
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    .line 199
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->initDeviceSystemProperties(Landroid/content/Context;)V

    .line 201
    move-object/from16 v0, p4

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    .line 202
    if-eqz p4, :cond_2

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v10, "("

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    move-object/from16 v0, p4

    array-length v2, v0

    .line 207
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 208
    const-string v10, "_data=? OR _data LIKE ?"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v10, v2, -0x1

    if-eq v4, v10, :cond_0

    .line 211
    const-string v10, " OR "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const-string v10, ")"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 218
    mul-int/lit8 v10, v2, 0x2

    new-array v10, v10, [Ljava/lang/String;

    iput-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 219
    const/4 v4, 0x0

    const/4 v5, 0x0

    .local v5, "j":I
    move v6, v5

    .end local v5    # "j":I
    .local v6, "j":I
    :goto_1
    if-ge v4, v2, :cond_2

    .line 220
    aget-object v9, p4, v4

    .line 221
    .local v9, "path":Ljava/lang/String;
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "j":I
    .restart local v5    # "j":I
    aput-object v9, v10, v6

    .line 222
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "j":I
    .restart local v6    # "j":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 227
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v2    # "count":I
    .end local v4    # "i":I
    .end local v6    # "j":I
    .end local v9    # "path":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget-object v8, v10, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 228
    .local v8, "locale":Ljava/util/Locale;
    if-eqz v8, :cond_3

    .line 229
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    .line 230
    .local v7, "language":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 231
    .local v3, "country":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 232
    if-eqz v3, :cond_4

    .line 233
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    .line 239
    .end local v3    # "country":Ljava/lang/String;
    .end local v7    # "language":Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 235
    .restart local v3    # "country":Ljava/lang/String;
    .restart local v7    # "language":Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    invoke-virtual {v10, v7}, Landroid/media/MediaScanner;->setLocale(Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$002(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryScale:I

    return p1
.end method

.method static synthetic access$100(Landroid/mtp/MtpDatabase;)I
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 70
    iget v0, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return v0
.end method

.method static synthetic access$102(Landroid/mtp/MtpDatabase;I)I
    .locals 0
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;
    .param p1, "x1"    # I

    .prologue
    .line 70
    iput p1, p0, Landroid/mtp/MtpDatabase;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/mtp/MtpDatabase;)Landroid/mtp/MtpServer;
    .locals 1
    .param p0, "x0"    # Landroid/mtp/MtpDatabase;

    .prologue
    .line 70
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    return-object v0
.end method

.method private beginSendObject(Ljava/lang/String;IIIJJ)I
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .param p4, "storageId"    # I
    .param p5, "size"    # J
    .param p7, "modified"    # J

    .prologue
    .line 396
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageRoot(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to put file outside of storage area: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const/4 v0, -0x1

    .line 440
    :cond_0
    :goto_0
    return v0

    .line 401
    :cond_1
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase;->inStorageSubDirectory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    .line 404
    :cond_2
    if-eqz p1, :cond_4

    .line 405
    const/4 v8, 0x0

    .line 407
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 409
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 410
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file already exists in beginSendObject: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    const/4 v0, -0x1

    .line 416
    if-eqz v8, :cond_0

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 416
    :cond_3
    if-eqz v8, :cond_4

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 422
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_4
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 423
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 424
    .local v11, "values":Landroid/content/ContentValues;
    const-string v0, "_data"

    invoke-virtual {v11, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "format"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 426
    const-string/jumbo v0, "parent"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    const-string/jumbo v0, "storage_id"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    const-string v0, "_size"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 429
    const-string v0, "date_modified"

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 432
    :try_start_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    invoke-interface {v0, v1, v2, v11}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v10

    .line 433
    .local v10, "uri":Landroid/net/Uri;
    if-eqz v10, :cond_6

    .line 434
    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto/16 :goto_0

    .line 413
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "values":Landroid/content/ContentValues;
    .restart local v8    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 414
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 416
    if-eqz v8, :cond_4

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 416
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 417
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 436
    .end local v8    # "c":Landroid/database/Cursor;
    .restart local v10    # "uri":Landroid/net/Uri;
    .restart local v11    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 438
    .end local v10    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v9

    .line 439
    .restart local v9    # "e":Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in beginSendObject"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private createObjectQuery(III)Landroid/database/Cursor;
    .locals 11
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x2

    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 486
    if-ne p1, v0, :cond_6

    .line 488
    if-nez p2, :cond_3

    .line 490
    if-nez p3, :cond_1

    .line 492
    const/4 v4, 0x0

    .line 493
    .local v4, "where":Ljava/lang/String;
    const/4 v5, 0x0

    .line 557
    .local v5, "whereArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 558
    if-nez v4, :cond_c

    .line 559
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    .line 560
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    .line 578
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    move-object v7, v6

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 495
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_1
    if-ne p3, v0, :cond_2

    .line 497
    const/4 p3, 0x0

    .line 499
    :cond_2
    const-string/jumbo v4, "parent=?"

    .line 500
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 504
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_3
    if-nez p3, :cond_4

    .line 506
    const-string v4, "format=?"

    .line 507
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 509
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_4
    if-ne p3, v0, :cond_5

    .line 511
    const/4 p3, 0x0

    .line 513
    :cond_5
    const-string v4, "format=? AND parent=?"

    .line 514
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 520
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_6
    if-nez p2, :cond_9

    .line 522
    if-nez p3, :cond_7

    .line 524
    const-string/jumbo v4, "storage_id=?"

    .line 525
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_7
    if-ne p3, v0, :cond_8

    .line 529
    const/4 p3, 0x0

    .line 531
    :cond_8
    const-string/jumbo v4, "storage_id=? AND parent=?"

    .line 532
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 537
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_9
    if-nez p3, :cond_a

    .line 539
    const-string/jumbo v4, "storage_id=? AND format=?"

    .line 540
    .restart local v4    # "where":Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto :goto_0

    .line 543
    .end local v4    # "where":Ljava/lang/String;
    .end local v5    # "whereArgs":[Ljava/lang/String;
    :cond_a
    if-ne p3, v0, :cond_b

    .line 545
    const/4 p3, 0x0

    .line 547
    :cond_b
    const-string/jumbo v4, "storage_id=? AND format=? AND parent=?"

    .line 548
    .restart local v4    # "where":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v5, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v3

    .restart local v5    # "whereArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 562
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhere:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 565
    array-length v0, v5

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v10, v0, [Ljava/lang/String;

    .line 568
    .local v10, "newWhereArgs":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v0, v5

    if-ge v8, v0, :cond_d

    .line 569
    aget-object v0, v5, v8

    aput-object v0, v10, v8

    .line 568
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 571
    :cond_d
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    array-length v0, v0

    if-ge v9, v0, :cond_e

    .line 572
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mSubDirectoriesWhereArgs:[Ljava/lang/String;

    aget-object v0, v0, v9

    aput-object v0, v10, v8

    .line 571
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 574
    :cond_e
    move-object v5, v10

    goto/16 :goto_1
.end method

.method private deleteFile(I)I
    .locals 19
    .param p1, "handle"    # I

    .prologue
    .line 1358
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1359
    const/16 v16, 0x0

    .line 1360
    .local v16, "path":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1362
    .local v13, "format":I
    const/4 v10, 0x0

    .line 1364
    .local v10, "c":Landroid/database/Cursor;
    if-nez p1, :cond_3

    .line 1365
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/mtp/MtpStorage;

    .line 1366
    .local v17, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual/range {v17 .. v17}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1368
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v5, "_data LIKE ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v17 .. v17}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1423
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "storage":Landroid/mtp/MtpStorage;
    :catch_0
    move-exception v12

    .line 1424
    .local v12, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in deleteFile"

    invoke-static {v2, v3, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1425
    const/16 v2, 0x2002

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    return v2

    .line 1371
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1372
    const/16 v2, 0x2001

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1374
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1376
    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1379
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1380
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v13

    .line 1385
    if-eqz v16, :cond_4

    if-nez v13, :cond_6

    .line 1386
    :cond_4
    const/16 v2, 0x2002

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1382
    :cond_5
    const/16 v2, 0x2009

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1390
    :cond_6
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    .line 1391
    const/16 v2, 0x200d

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1394
    :cond_7
    const/16 v2, 0x3001

    if-ne v13, v2, :cond_a

    .line 1396
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 1397
    .local v18, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string v4, "_data LIKE ?1 AND lower(substr(_data,1,?2))=lower(?3)"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    .line 1402
    .local v11, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .end local v11    # "count":I
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v4, v0

    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v18

    .line 1408
    .restart local v18    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/content/IContentProvider;->delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    .line 1409
    const/16 v2, 0x3001

    if-eq v13, v2, :cond_9

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/.nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v2

    if-eqz v2, :cond_9

    .line 1412
    const/4 v2, 0x0

    :try_start_6
    const-string v3, "/"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 1413
    .local v15, "parentPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "unhide"

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v15, v5}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1418
    .end local v15    # "parentPath":Ljava/lang/String;
    :cond_9
    :goto_3
    :try_start_7
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->removeReferenceFromTable(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1419
    const/16 v2, 0x2001

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1403
    .end local v18    # "uri":Landroid/net/Uri;
    :cond_a
    const v2, 0xba03

    if-ne v13, v2, :cond_8

    .line 1404
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 1427
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_b

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v2

    .line 1414
    .restart local v18    # "uri":Landroid/net/Uri;
    :catch_1
    move-exception v12

    .line 1415
    .restart local v12    # "e":Landroid/os/RemoteException;
    :try_start_9
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 1421
    .end local v12    # "e":Landroid/os/RemoteException;
    :cond_c
    const/16 v2, 0x2009

    .line 1427
    if-eqz v10, :cond_1

    .line 1428
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private endSendObject(Ljava/lang/String;IIZ)V
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "handle"    # I
    .param p3, "format"    # I
    .param p4, "succeeded"    # Z

    .prologue
    .line 445
    if-eqz p4, :cond_4

    .line 448
    const v4, 0xba05

    if-ne p3, v4, :cond_2

    .line 450
    move-object v2, p1

    .line 451
    .local v2, "name":Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 452
    .local v1, "lastSlash":I
    if-ltz v1, :cond_0

    .line 453
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 456
    :cond_0
    const-string v4, ".pla"

    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    const/4 v4, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 460
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 461
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string/jumbo v4, "name"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v4, "format"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 464
    const-string v4, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 465
    const-string/jumbo v4, "media_scanner_new_object_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    :try_start_0
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v5, v6, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :goto_0
    return-void

    .line 469
    .restart local v1    # "lastSlash":I
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v3    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in endSendObject"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 472
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "lastSlash":I
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_2
    const v4, 0xba03

    if-ne p3, v4, :cond_3

    .line 473
    const-string v4, "MtpDatabase"

    const-string v5, "endSendObject for AbstractAudioAlbum"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_3
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mMediaScanner:Landroid/media/MediaScanner;

    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, p2, p3}, Landroid/media/MediaScanner;->scanMtpFile(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 478
    :cond_4
    invoke-direct {p0, p2}, Landroid/mtp/MtpDatabase;->deleteFile(I)I

    goto :goto_0
.end method

.method private getDeviceIcon()[B
    .locals 9

    .prologue
    .line 1125
    const/4 v3, 0x0

    .line 1126
    .local v3, "iStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1128
    .local v4, "oStream":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1080403

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 1130
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1131
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .local v5, "oStream":Ljava/io/ByteArrayOutputStream;
    const/16 v6, 0x200

    :try_start_1
    new-array v0, v6, [B

    .line 1133
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1134
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 1137
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v4, v5

    .line 1138
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .local v2, "e":Ljava/io/IOException;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    :goto_1
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "Exception when doing IO operations on mtp icon!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1139
    const/4 v6, 0x0

    .line 1141
    if-eqz v3, :cond_0

    .line 1143
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1148
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 1150
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1153
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    return-object v6

    .line 1136
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v6

    .line 1141
    if-eqz v3, :cond_3

    .line 1143
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1148
    :cond_3
    :goto_4
    if-eqz v5, :cond_4

    .line 1150
    :try_start_7
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_4
    :goto_5
    move-object v4, v5

    .line 1153
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_3

    .line 1144
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v2

    .line 1145
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1151
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 1152
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1144
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v2

    .line 1145
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1151
    :catch_4
    move-exception v2

    .line 1152
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1141
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_6
    if-eqz v3, :cond_5

    .line 1143
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1148
    :cond_5
    :goto_7
    if-eqz v4, :cond_6

    .line 1150
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1153
    :cond_6
    :goto_8
    throw v6

    .line 1144
    :catch_5
    move-exception v2

    .line 1145
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the InputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1151
    .end local v2    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v2

    .line 1152
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v7, "MtpDatabase"

    const-string v8, "Exception when close the ByteArrayOutputStream!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1141
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "oStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "oStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_6

    .line 1137
    :catch_7
    move-exception v2

    goto :goto_1
.end method

.method private getDeviceProperty(I[J[C)I
    .locals 11
    .param p1, "property"    # I
    .param p2, "outIntValue"    # [J
    .param p3, "outStringValue"    # [C

    .prologue
    const/16 v7, 0x2001

    const/4 v10, 0x0

    .line 1159
    sparse-switch p1, :sswitch_data_0

    .line 1186
    const/16 v6, 0x200a

    :goto_0
    return v6

    .line 1163
    :sswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1164
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1165
    .local v3, "length":I
    const/16 v6, 0xff

    if-le v3, v6, :cond_0

    .line 1166
    const/16 v3, 0xff

    .line 1168
    :cond_0
    invoke-virtual {v4, v10, v3, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1169
    aput-char v10, p3, v3

    move v6, v7

    .line 1170
    goto :goto_0

    .line 1174
    .end local v3    # "length":I
    .end local v4    # "value":Ljava/lang/String;
    :sswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "window"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1176
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v5

    .line 1177
    .local v5, "width":I
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    .line 1178
    .local v1, "height":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .local v2, "imageSize":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v2, v10, v6, p3, v10}, Ljava/lang/String;->getChars(II[CI)V

    .line 1180
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    aput-char v10, p3, v6

    move v6, v7

    .line 1181
    goto :goto_0

    .line 1159
    :sswitch_data_0
    .sparse-switch
        0x5003 -> :sswitch_1
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_0
    .end sparse-switch
.end method

.method private getNumObjects(III)I
    .locals 4
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    .line 621
    packed-switch p1, :pswitch_data_0

    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;

    move-result-object v0

    .line 631
    if-eqz v0, :cond_1

    .line 632
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 637
    if-eqz v0, :cond_0

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 641
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v2

    .line 623
    :pswitch_0
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v2}, Landroid/mtp/MtpServiceDatabase;->getNumObjects()I

    move-result v2

    goto :goto_0

    .line 625
    :pswitch_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v2}, Landroid/mtp/MtpServiceDatabase;->getNumObjects()I

    move-result v2

    goto :goto_0

    .line 637
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v0, :cond_2

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 641
    :cond_2
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getNumObjects"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 637
    if-eqz v0, :cond_2

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 637
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_3

    .line 638
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 621
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectFilePath(I[I[J)[C
    .locals 13
    .param p1, "handle"    # I
    .param p2, "result"    # [I
    .param p3, "outFileLengthFormat"    # [J

    .prologue
    .line 1283
    const/4 v10, 0x0

    .line 1284
    .local v10, "outFilePath":[C
    if-nez p1, :cond_0

    .line 1286
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [C

    .line 1287
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v10, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1288
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaStoragePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, v10, v0

    .line 1289
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, p3, v0

    .line 1290
    const/4 v0, 0x1

    const-wide/16 v2, 0x3001

    aput-wide v2, p3, v0

    .line 1291
    const/4 v0, 0x0

    const/16 v1, 0x2001

    aput v1, p2, v0

    move-object v11, v10

    .line 1319
    .end local v10    # "outFilePath":[C
    .local v11, "outFilePath":[C
    :goto_0
    return-object v11

    .line 1294
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :cond_0
    const/4 v8, 0x0

    .line 1296
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1298
    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1299
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1300
    .local v12, "path":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v10, v0, [C

    .line 1301
    const/4 v0, 0x0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v12, v0, v1, v10, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1302
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    aput-char v1, v10, v0

    .line 1305
    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    aput-wide v2, p3, v0

    .line 1306
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    aput-wide v2, p3, v0

    .line 1307
    const/4 v0, 0x0

    const/16 v1, 0x2001

    aput v1, p2, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1318
    if-eqz v8, :cond_1

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1310
    .end local v11    # "outFilePath":[C
    .end local v12    # "path":Ljava/lang/String;
    .restart local v10    # "outFilePath":[C
    :cond_2
    const/4 v0, 0x0

    const/16 v1, 0x2009

    :try_start_1
    aput v1, p2, v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1318
    if-eqz v8, :cond_3

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1313
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :catch_0
    move-exception v9

    .line 1314
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1315
    const/4 v0, 0x0

    const/16 v1, 0x2002

    aput v1, p2, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1318
    if-eqz v8, :cond_4

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v11, v10

    .end local v10    # "outFilePath":[C
    .restart local v11    # "outFilePath":[C
    goto :goto_0

    .line 1318
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v11    # "outFilePath":[C
    .restart local v10    # "outFilePath":[C
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_5

    .line 1319
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method

.method private getObjectFormat(I)I
    .locals 11
    .param p1, "handle"    # I

    .prologue
    const/4 v10, -0x1

    .line 1325
    const/4 v8, 0x0

    .line 1327
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v8

    .line 1329
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1330
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1338
    if-eqz v8, :cond_0

    .line 1339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 1338
    :cond_1
    if-eqz v8, :cond_2

    .line 1339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v10

    goto :goto_0

    .line 1334
    :catch_0
    move-exception v9

    .line 1335
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in getObjectFilePath"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1338
    if-eqz v8, :cond_3

    .line 1339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v10

    goto :goto_0

    .line 1338
    .end local v9    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 1339
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private getObjectInfo(I[I[C[J)Z
    .locals 16
    .param p1, "handle"    # I
    .param p2, "outStorageFormatParent"    # [I
    .param p3, "outName"    # [C
    .param p4, "outCreatedModified"    # [J

    .prologue
    .line 1244
    const/4 v10, 0x0

    .line 1246
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->OBJECT_INFO_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1248
    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1249
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1250
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1251
    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    aput v3, p2, v2

    .line 1254
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1255
    .local v14, "path":Ljava/lang/String;
    const/16 v2, 0x2f

    invoke-virtual {v14, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 1256
    .local v13, "lastSlash":I
    if-ltz v13, :cond_3

    add-int/lit8 v15, v13, 0x1

    .line 1257
    .local v15, "start":I
    :goto_0
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v12

    .line 1258
    .local v12, "end":I
    sub-int v2, v12, v15

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    .line 1259
    add-int/lit16 v12, v15, 0xff

    .line 1261
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v14, v15, v12, v0, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 1262
    sub-int v2, v12, v15

    const/4 v3, 0x0

    aput-char v3, p3, v2

    .line 1264
    const/4 v2, 0x0

    const/4 v3, 0x5

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1265
    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    aput-wide v4, p4, v2

    .line 1267
    const/4 v2, 0x0

    aget-wide v2, p4, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 1268
    const/4 v2, 0x0

    const/4 v3, 0x1

    aget-wide v4, p4, v3

    aput-wide v4, p4, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1270
    :cond_1
    const/4 v2, 0x1

    .line 1275
    if-eqz v10, :cond_2

    .line 1276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1279
    .end local v12    # "end":I
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "start":I
    :cond_2
    :goto_1
    return v2

    .line 1256
    .restart local v13    # "lastSlash":I
    .restart local v14    # "path":Ljava/lang/String;
    :cond_3
    const/4 v15, 0x0

    goto :goto_0

    .line 1275
    .end local v13    # "lastSlash":I
    .end local v14    # "path":Ljava/lang/String;
    :cond_4
    if-eqz v10, :cond_5

    .line 1276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1279
    :cond_5
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1272
    :catch_0
    move-exception v11

    .line 1273
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectInfo"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1275
    if-eqz v10, :cond_5

    .line 1276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 1275
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_6

    .line 1276
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2
.end method

.method private getObjectList(III)[I
    .locals 8
    .param p1, "storageID"    # I
    .param p2, "format"    # I
    .param p3, "parent"    # I

    .prologue
    const/4 v5, 0x0

    .line 583
    packed-switch p1, :pswitch_data_0

    .line 595
    const/4 v0, 0x0

    .line 597
    .local v0, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/mtp/MtpDatabase;->createObjectQuery(III)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 598
    if-nez v0, :cond_4

    .line 613
    if-eqz v0, :cond_0

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v4, v5

    .line 617
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v4

    .line 585
    :pswitch_0
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    if-eqz v6, :cond_2

    .line 586
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v5}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles()[I

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 588
    goto :goto_0

    .line 590
    :pswitch_1
    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    if-eqz v6, :cond_3

    .line 591
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    invoke-virtual {v5}, Landroid/mtp/MtpServiceDatabase;->getObjectHandles()[I

    move-result-object v4

    goto :goto_0

    :cond_3
    move-object v4, v5

    .line 593
    goto :goto_0

    .line 601
    .restart local v0    # "c":Landroid/database/Cursor;
    :cond_4
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 602
    .local v1, "count":I
    if-lez v1, :cond_6

    .line 603
    new-array v4, v1, [I

    .line 604
    .local v4, "result":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 605
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 606
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    aput v6, v4, v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 604
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 613
    :cond_5
    if-eqz v0, :cond_1

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 613
    .end local v3    # "i":I
    .end local v4    # "result":[I
    :cond_6
    if-eqz v0, :cond_7

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .end local v1    # "count":I
    :cond_7
    :goto_2
    move-object v4, v5

    .line 617
    goto :goto_0

    .line 610
    :catch_0
    move-exception v2

    .line 611
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v6, "MtpDatabase"

    const-string v7, "RemoteException in getObjectList"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 613
    if-eqz v0, :cond_7

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 613
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_8

    .line 614
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 583
    :pswitch_data_0
    .packed-switch 0x10002
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getObjectPropertyList(JIJII)Landroid/mtp/MtpPropertyList;
    .locals 11
    .param p1, "handle"    # J
    .param p3, "format"    # I
    .param p4, "property"    # J
    .param p6, "groupCode"    # I
    .param p7, "depth"    # I

    .prologue
    .line 847
    if-eqz p6, :cond_0

    .line 848
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const v6, 0xa807

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    .line 906
    :goto_0
    return-object v4

    .line 850
    :cond_0
    const/4 v2, 0x0

    .line 851
    .local v2, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    const-wide v4, 0xffffffffL

    cmp-long v4, p1, v4

    if-nez v4, :cond_3

    .line 852
    const-wide/32 v4, 0xdd80

    cmp-long v4, p4, v4

    if-nez v4, :cond_2

    .line 853
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 860
    :cond_1
    :goto_1
    if-eqz v2, :cond_4

    .line 861
    long-to-int v3, p1

    long-to-int v5, p4

    move v4, p3

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v2 .. v7}, Landroid/mtp/MtpServiceDatabase;->getObjectPropertyList(IIIII)Landroid/mtp/MtpPropertyList;

    move-result-object v4

    goto :goto_0

    .line 854
    :cond_2
    const-wide/32 v4, 0xdd81

    cmp-long v4, p4, v4

    if-nez v4, :cond_1

    .line 855
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_1

    .line 858
    :cond_3
    long-to-int v4, p1

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v2

    goto :goto_1

    .line 864
    :cond_4
    const v4, 0xfe01

    if-ne p3, v4, :cond_9

    .line 865
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    const-string/jumbo v5, "object_id"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/mtp/MtpDeviceServiceDBHelper;->getAnchorInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;

    move-result-object v9

    .line 867
    .local v9, "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    if-nez v9, :cond_5

    .line 868
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2009

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_0

    .line 870
    :cond_5
    iget v4, v9, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7

    .line 871
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    if-eqz v4, :cond_6

    .line 872
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    long-to-int v5, p1

    invoke-virtual {v4, v5, v9}, Landroid/mtp/MtpServiceDatabase;->getAnchorProperties(ILandroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;)Landroid/mtp/MtpPropertyList;

    move-result-object v4

    goto :goto_0

    .line 874
    :cond_6
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2009

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto :goto_0

    .line 875
    :cond_7
    iget v4, v9, Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;->serviceId:I

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_9

    .line 876
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    if-eqz v4, :cond_8

    .line 877
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    long-to-int v5, p1

    invoke-virtual {v4, v5, v9}, Landroid/mtp/MtpServiceDatabase;->getAnchorProperties(ILandroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;)Landroid/mtp/MtpPropertyList;

    move-result-object v4

    goto :goto_0

    .line 879
    :cond_8
    new-instance v4, Landroid/mtp/MtpPropertyList;

    const/4 v5, 0x0

    const/16 v6, 0x2009

    invoke-direct {v4, v5, v6}, Landroid/mtp/MtpPropertyList;-><init>(II)V

    goto/16 :goto_0

    .line 884
    .end local v9    # "anchorInfo":Landroid/mtp/MtpDeviceServiceDBHelper$AnchorInfo;
    :cond_9
    const-wide v4, 0xffffffffL

    cmp-long v4, p4, v4

    if-nez v4, :cond_c

    .line 885
    if-nez p3, :cond_a

    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-lez v4, :cond_a

    .line 887
    long-to-int v4, p1

    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->getObjectFormat(I)I

    move-result p3

    .line 889
    :cond_a
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyGroup;

    .line 890
    .local v3, "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v3, :cond_b

    .line 891
    invoke-direct {p0, p3}, Landroid/mtp/MtpDatabase;->getSupportedObjectProperties(I)[I

    move-result-object v8

    .line 892
    .local v8, "propertyList":[I
    new-instance v3, Landroid/mtp/MtpPropertyGroup;

    .end local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 894
    .restart local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByFormat:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    .end local v8    # "propertyList":[I
    :cond_b
    :goto_2
    long-to-int v4, p1

    move/from16 v0, p7

    invoke-virtual {v3, v4, p3, v0}, Landroid/mtp/MtpPropertyGroup;->getPropertyList(III)Landroid/mtp/MtpPropertyList;

    move-result-object v4

    goto/16 :goto_0

    .line 897
    .end local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    :cond_c
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpPropertyGroup;

    .line 898
    .restart local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    if-nez v3, :cond_b

    .line 899
    const/4 v4, 0x1

    new-array v8, v4, [I

    const/4 v4, 0x0

    long-to-int v5, p4

    aput v5, v8, v4

    .line 900
    .restart local v8    # "propertyList":[I
    new-instance v3, Landroid/mtp/MtpPropertyGroup;

    .end local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v6, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v7, p0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Landroid/mtp/MtpPropertyGroup;-><init>(Landroid/mtp/MtpDatabase;Landroid/content/IContentProvider;Ljava/lang/String;Ljava/lang/String;[I)V

    .line 902
    .restart local v3    # "propertyGroup":Landroid/mtp/MtpPropertyGroup;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mPropertyGroupsByProperty:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    long-to-int v6, p4

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private getObjectReferences(I)[I
    .locals 18
    .param p1, "handle"    # I

    .prologue
    .line 1446
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v17

    .line 1447
    .local v17, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    if-eqz v17, :cond_1

    .line 1448
    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/mtp/MtpServiceDatabase;->getObjectReferences(I)[I

    move-result-object v16

    .line 1513
    :cond_0
    :goto_0
    return-object v16

    .line 1450
    :cond_1
    const/4 v14, 0x0

    .line 1451
    .local v14, "format":I
    const/4 v11, 0x0

    .line 1453
    .local v11, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v11

    .line 1455
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1456
    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1461
    if-nez v14, :cond_3

    .line 1462
    const-string v2, "MtpDatabase"

    const-string v3, "getObjectReferences -> Invalid Format Code: 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1463
    const/16 v16, 0x0

    .line 1469
    if-eqz v11, :cond_0

    .line 1470
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1458
    :cond_2
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "getObjectReferences -> invalid object handle"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1459
    const/16 v16, 0x0

    .line 1469
    if-eqz v11, :cond_0

    .line 1470
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1469
    :cond_3
    if-eqz v11, :cond_4

    .line 1470
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1474
    :cond_4
    const/16 v2, 0x3001

    if-ne v14, v2, :cond_8

    .line 1476
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1477
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1478
    .local v10, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1479
    .local v12, "count":I
    if-nez v12, :cond_6

    .line 1480
    const/16 v16, 0x0

    goto :goto_0

    .line 1465
    .end local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "count":I
    :catch_0
    move-exception v13

    .line 1466
    .local v13, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectReferences - Hashtable section"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1467
    const/16 v16, 0x0

    .line 1469
    if-eqz v11, :cond_0

    .line 1470
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1469
    .end local v13    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_5

    .line 1470
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 1482
    .restart local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v12    # "count":I
    :cond_6
    new-array v0, v12, [I

    move-object/from16 v16, v0

    .line 1483
    .local v16, "result":[I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    if-ge v15, v12, :cond_0

    .line 1484
    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v16, v15

    .line 1483
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1488
    .end local v10    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v12    # "count":I
    .end local v15    # "i":I
    .end local v16    # "result":[I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1490
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v6, v0

    invoke-static {v2, v6, v7}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1491
    .local v4, "uri":Landroid/net/Uri;
    const/4 v11, 0x0

    .line 1493
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    sget-object v5, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 1494
    if-nez v11, :cond_9

    .line 1495
    const/16 v16, 0x0

    .line 1509
    if-eqz v11, :cond_0

    .line 1510
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1497
    :cond_9
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 1498
    .restart local v12    # "count":I
    if-lez v12, :cond_b

    .line 1499
    new-array v0, v12, [I

    move-object/from16 v16, v0

    .line 1500
    .restart local v16    # "result":[I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    if-ge v15, v12, :cond_a

    .line 1501
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 1502
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v16, v15
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1500
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1509
    :cond_a
    if-eqz v11, :cond_0

    .line 1510
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1509
    .end local v15    # "i":I
    .end local v16    # "result":[I
    :cond_b
    if-eqz v11, :cond_c

    .line 1510
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1513
    .end local v12    # "count":I
    :cond_c
    :goto_3
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1506
    :catch_1
    move-exception v13

    .line 1507
    .restart local v13    # "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectList"

    invoke-static {v2, v3, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1509
    if-eqz v11, :cond_c

    .line 1510
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1509
    .end local v13    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v2

    if-eqz v11, :cond_d

    .line 1510
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v2
.end method

.method private getParentHandle(ILjava/lang/String;)I
    .locals 13
    .param p1, "storageId"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1649
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1650
    .local v12, "folder":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1651
    const/4 v10, 0x0

    .line 1653
    .local v10, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v3, Landroid/mtp/MtpDatabase;->ID_PROJECTION:[Ljava/lang/String;

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 1655
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1656
    const-string v0, "_id"

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1661
    if-eqz v10, :cond_0

    .line 1662
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1669
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return v0

    .line 1661
    .restart local v10    # "c":Landroid/database/Cursor;
    :cond_1
    if-eqz v10, :cond_2

    .line 1662
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1669
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_2
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 1658
    .restart local v10    # "c":Landroid/database/Cursor;
    :catch_0
    move-exception v11

    .line 1659
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException in getting handle for path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1661
    if-eqz v10, :cond_2

    .line 1662
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 1661
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_3

    .line 1662
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 1665
    .end local v10    # "c":Landroid/database/Cursor;
    :cond_4
    invoke-virtual {v12}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1666
    const/16 v3, 0x3001

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v1, p0

    move-object v2, p2

    move v5, p1

    invoke-direct/range {v1 .. v9}, Landroid/mtp/MtpDatabase;->beginSendObject(Ljava/lang/String;IIIJJ)I

    move-result v0

    goto :goto_0
.end method

.method private getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;
    .locals 2
    .param p1, "handle"    # I

    .prologue
    .line 1434
    invoke-static {p1}, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil;->parse(I)Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;

    move-result-object v1

    iget v0, v1, Landroid/mtp/MtpDeviceServiceTool$MtpHandleUtil$MtpInternalHandle;->type:I

    .line 1435
    .local v0, "handleType":I
    packed-switch v0, :pswitch_data_0

    .line 1441
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1437
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_0

    .line 1439
    :pswitch_1
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    goto :goto_0

    .line 1435
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getSupportedCaptureFormats()[I
    .locals 1

    .prologue
    .line 677
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSupportedDeviceProperties()[I
    .locals 1

    .prologue
    .line 832
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0xd401
        0xd402
        0xd405
        0x5003
        0x5001
        0xd302
        0xd303
    .end array-data
.end method

.method private getSupportedObjectProperties(I)[I
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 805
    sparse-switch p1, :sswitch_data_0

    .line 827
    sget-object v0, Landroid/mtp/MtpDatabase;->FILE_PROPERTIES:[I

    :goto_0
    return-object v0

    .line 810
    :sswitch_0
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_PROPERTIES:[I

    goto :goto_0

    .line 815
    :sswitch_1
    sget-object v0, Landroid/mtp/MtpDatabase;->VIDEO_PROPERTIES:[I

    goto :goto_0

    .line 823
    :sswitch_2
    sget-object v0, Landroid/mtp/MtpDatabase;->IMAGE_PROPERTIES:[I

    goto :goto_0

    .line 825
    :sswitch_3
    sget-object v0, Landroid/mtp/MtpDatabase;->AUDIO_ALBUM_PROPERTIES:[I

    goto :goto_0

    .line 805
    :sswitch_data_0
    .sparse-switch
        0x3008 -> :sswitch_0
        0x3009 -> :sswitch_0
        0x300a -> :sswitch_1
        0x3801 -> :sswitch_2
        0x3802 -> :sswitch_2
        0x3804 -> :sswitch_2
        0x3807 -> :sswitch_2
        0x3808 -> :sswitch_2
        0x380b -> :sswitch_2
        0x380d -> :sswitch_2
        0xb902 -> :sswitch_1
        0xb903 -> :sswitch_0
        0xb906 -> :sswitch_0
        0xb982 -> :sswitch_1
        0xb984 -> :sswitch_1
        0xba03 -> :sswitch_3
    .end sparse-switch
.end method

.method private getSupportedPlaybackFormats()[I
    .locals 1

    .prologue
    .line 645
    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3000
        0x300a
        0x3001
        0x3004
        0x3005
        0x3008
        0x3009
        0x3801
        0x3802
        0x3804
        0x3807
        0x3808
        0x380b
        0x380d
        0xb902
        0xb903
        0xb982
        0xb984
        0xba03
        0xba05
        0xba10
        0xba11
        0xba14
        0xba82
        0xb906
    .end array-data
.end method

.method private inStorageRoot(Ljava/lang/String;)Z
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 380
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 381
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "canonical":Ljava/lang/String;
    iget-object v4, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 383
    .local v3, "root":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    const/4 v4, 0x1

    .line 390
    .end local v0    # "canonical":Ljava/lang/String;
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "root":Ljava/lang/String;
    :goto_0
    return v4

    .line 387
    :catch_0
    move-exception v4

    .line 390
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private inStorageSubDirectory(Ljava/lang/String;)Z
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v5, :cond_1

    const/4 v0, 0x1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 349
    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_2
    const/4 v0, 0x0

    .line 352
    .local v0, "allowed":Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 353
    .local v2, "pathLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    if-nez v0, :cond_0

    .line 354
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v3, v5, v1

    .line 355
    .local v3, "subdir":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 356
    .local v4, "subdirLength":I
    if-ge v4, v2, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 359
    const/4 v0, 0x1

    .line 353
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initDeviceProperties(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 311
    const-string v10, "device-properties"

    .line 312
    .local v10, "devicePropertiesName":Ljava/lang/String;
    const-string v1, "device-properties"

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 313
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 315
    .local v9, "databaseFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 318
    const/4 v0, 0x0

    .line 319
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .line 321
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v1, "device-properties"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_4

    .line 323
    const-string/jumbo v1, "properties"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "code"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "value"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 325
    if-eqz v8, :cond_4

    .line 326
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 327
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 329
    .local v12, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 330
    .local v13, "value":Ljava/lang/String;
    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 335
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 336
    .local v11, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v1, "MtpDatabase"

    const-string v2, "failed to migrate device properties"

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 341
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const-string v1, "device-properties"

    invoke-virtual {p1, v1}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 343
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "c":Landroid/database/Cursor;
    :cond_2
    return-void

    .line 332
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "c":Landroid/database/Cursor;
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :try_start_2
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 338
    :catchall_0
    move-exception v1

    if-eqz v8, :cond_6

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 339
    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
.end method

.method private initDeviceSystemProperties(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const-string v0, "device-properties"

    .line 291
    .local v0, "devicePropertiesName":Ljava/lang/String;
    const-string/jumbo v3, "ro.semc.product.name"

    .line 292
    .local v3, "modelName":Ljava/lang/String;
    const-string v5, "device-properties"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    .line 294
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    .local v2, "friendlyNameKey":Ljava/lang/String;
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, "syncPartnerKey":Ljava/lang/String;
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 299
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 300
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "ro.semc.product.name"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 304
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 305
    .restart local v1    # "e":Landroid/content/SharedPreferences$Editor;
    const-string v5, ""

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 306
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 308
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_1
    return-void
.end method

.method private isStorageSubDirectory(Ljava/lang/String;)Z
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 368
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 374
    :cond_0
    :goto_0
    return v1

    .line 369
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 370
    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mSubDirectories:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 371
    const/4 v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private final native native_create_ServiceDB_Ref(I)V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_setup()V
.end method

.method private removeReferenceFromTable(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 1345
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1346
    .local v1, "keysList":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1347
    .local v2, "removeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1348
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1350
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1351
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1353
    iget-object v3, p0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1355
    .end local v0    # "key":Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private renameFile(ILjava/lang/String;)I
    .locals 20
    .param p1, "handle"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 910
    const/4 v10, 0x0

    .line 913
    .local v10, "c":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 914
    .local v17, "path":Ljava/lang/String;
    const/4 v12, 0x0

    .line 915
    .local v12, "format":I
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    .line 917
    .local v7, "whereArgs":[Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v5, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v6, "_id=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    .line 919
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 921
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v12

    .line 927
    :cond_0
    if-eqz v10, :cond_1

    .line 928
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 931
    :cond_1
    if-nez v17, :cond_4

    .line 932
    const/16 v2, 0x2009

    .line 998
    :cond_2
    :goto_0
    return v2

    .line 923
    :catch_0
    move-exception v11

    .line 924
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in getObjectFilePath"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 925
    const/16 v2, 0x2002

    .line 927
    if-eqz v10, :cond_2

    .line 928
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 927
    .end local v11    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_3

    .line 928
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 936
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/mtp/MtpDatabase;->isStorageSubDirectory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 937
    const/16 v2, 0x200d

    goto :goto_0

    .line 941
    :cond_5
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 942
    .local v16, "oldFile":Ljava/io/File;
    const/16 v2, 0x2f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v13

    .line 943
    .local v13, "lastSlash":I
    const/4 v2, 0x1

    if-gt v13, v2, :cond_6

    .line 944
    const/16 v2, 0x2002

    goto :goto_0

    .line 946
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 947
    .local v15, "newPath":Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 948
    .local v14, "newFile":Ljava/io/File;
    invoke-static {v12}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 949
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v18

    .line 950
    .local v18, "success":Z
    if-nez v18, :cond_7

    .line 951
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renaming "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 956
    .end local v18    # "success":Z
    :cond_7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 957
    .local v5, "values":Landroid/content/ContentValues;
    const-string v2, "_data"

    invoke-virtual {v5, v2, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/16 v19, 0x0

    .line 962
    .local v19, "updated":I
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v6, "_id=?"

    invoke-interface/range {v2 .. v7}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v19

    .line 966
    :goto_1
    if-nez v19, :cond_9

    .line 967
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update path for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    invoke-static {v12}, Landroid/mtp/MtpConstants;->isAbstractObject(I)Z

    move-result v2

    if-nez v2, :cond_8

    .line 970
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 972
    :cond_8
    const/16 v2, 0x2002

    goto/16 :goto_0

    .line 963
    :catch_1
    move-exception v11

    .line 964
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    const-string v3, "RemoteException in mMediaProvider.update"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 976
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_9
    invoke-virtual {v14}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 978
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 981
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "unhide"

    const/4 v6, 0x0

    invoke-interface {v2, v3, v4, v15, v6}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 998
    :cond_a
    :goto_2
    const/16 v2, 0x2001

    goto/16 :goto_0

    .line 982
    :catch_2
    move-exception v11

    .line 983
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 988
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v15, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".nomedia"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 991
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "unhide"

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v2, v3, v4, v6, v8}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 992
    :catch_3
    move-exception v11

    .line 993
    .restart local v11    # "e":Landroid/os/RemoteException;
    const-string v2, "MtpDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unhide/rescan for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private resetDeviceProperty(I)I
    .locals 8
    .param p1, "property"    # I

    .prologue
    const/16 v4, 0x2002

    const/16 v3, 0x2001

    .line 1205
    const-string/jumbo v1, "ro.semc.product.name"

    .line 1206
    .local v1, "modelName":Ljava/lang/String;
    const/16 v2, 0x2001

    .line 1209
    .local v2, "result":I
    sparse-switch p1, :sswitch_data_0

    .line 1235
    const/16 v2, 0x200a

    .line 1239
    :goto_0
    return v2

    .line 1212
    :sswitch_0
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1213
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1214
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v3

    .line 1216
    :goto_1
    goto :goto_0

    :cond_0
    move v2, v4

    .line 1214
    goto :goto_1

    .line 1219
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1220
    .restart local v0    # "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1221
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1223
    :goto_2
    goto :goto_0

    :cond_1
    move v2, v4

    .line 1221
    goto :goto_2

    .line 1226
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    iget-object v5, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1227
    .restart local v0    # "e":Landroid/content/SharedPreferences$Editor;
    const v5, 0xd402

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ro.semc.product.name"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1229
    const v5, 0xd401

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1231
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 1233
    :goto_3
    goto :goto_0

    :cond_2
    move v2, v4

    .line 1231
    goto :goto_3

    .line 1209
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0xd401 -> :sswitch_0
        0xd402 -> :sswitch_1
    .end sparse-switch
.end method

.method private sessionEnded()V
    .locals 3

    .prologue
    .line 1579
    iget-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.provider.action.MTP_SESSION_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1581
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1583
    :cond_0
    return-void
.end method

.method private sessionStarted()V
    .locals 1

    .prologue
    .line 1575
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1576
    return-void
.end method

.method private setDeviceProperty(IJLjava/lang/String;)I
    .locals 2
    .param p1, "property"    # I
    .param p2, "intValue"    # J
    .param p4, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1191
    packed-switch p1, :pswitch_data_0

    .line 1201
    const/16 v1, 0x200a

    :goto_0
    return v1

    .line 1195
    :pswitch_0
    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1196
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1197
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2001

    goto :goto_0

    :cond_0
    const/16 v1, 0x2002

    goto :goto_0

    .line 1191
    nop

    :pswitch_data_0
    .packed-switch 0xd401
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I
    .locals 8
    .param p1, "handle"    # I
    .param p2, "intValue"    # J
    .param p4, "strValue"    # Ljava/lang/String;
    .param p5, "objType"    # Landroid/mtp/MtpDatabase$PropValueType;
    .param p6, "column"    # Ljava/lang/String;

    .prologue
    .line 1016
    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 1017
    .local v5, "whereArgs":[Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1019
    .local v3, "values":Landroid/content/ContentValues;
    sget-object v0, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    if-ne p5, v0, :cond_0

    .line 1020
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, p6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1025
    :goto_0
    const/4 v7, 0x0

    .line 1027
    .local v7, "updated":I
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    const-string v4, "_id=?"

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 1031
    :goto_1
    if-nez v7, :cond_1

    .line 1032
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update the property in column:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    const/16 v0, 0x2002

    .line 1036
    :goto_2
    return v0

    .line 1022
    .end local v7    # "updated":I
    :cond_0
    invoke-virtual {v3, p6, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1028
    .restart local v7    # "updated":I
    :catch_0
    move-exception v6

    .line 1029
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "MtpDatabase"

    const-string v1, "RemoteException in mMediaProvider.update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1036
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_1
    const/16 v0, 0x2001

    goto :goto_2
.end method

.method private setObjectProperty(IIJLjava/lang/String;)I
    .locals 7
    .param p1, "handle"    # I
    .param p2, "property"    # I
    .param p3, "intValue"    # J
    .param p5, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 1045
    const/4 v6, 0x0

    .line 1046
    .local v6, "column":Ljava/lang/String;
    sparse-switch p2, :sswitch_data_0

    .line 1117
    const v0, 0xa80a

    :goto_0
    return v0

    .line 1048
    :sswitch_0
    invoke-direct {p0, p1, p5}, Landroid/mtp/MtpDatabase;->renameFile(ILjava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1053
    :sswitch_1
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    :cond_0
    const v0, 0xa803

    goto :goto_0

    .line 1056
    :cond_1
    const-string/jumbo v6, "title"

    .line 1057
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1060
    :sswitch_2
    const-string v6, "audiobitrate"

    .line 1061
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1064
    :sswitch_3
    const-string/jumbo v6, "videobitrate"

    .line 1065
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1068
    :sswitch_4
    const-string/jumbo v6, "videoframesperthousandseconds"

    .line 1069
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1072
    :sswitch_5
    const-string v6, "audiosamplerate"

    .line 1073
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1076
    :sswitch_6
    const-string v6, "audionumchannels"

    .line 1077
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1080
    :sswitch_7
    const-string/jumbo v6, "videoscantype"

    .line 1081
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1084
    :sswitch_8
    const-string v6, "audiowavecodec"

    .line 1085
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1088
    :sswitch_9
    const-string/jumbo v6, "videofourcccodec"

    .line 1089
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_INT:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1092
    :sswitch_a
    const-string/jumbo v6, "videoencodingprofile"

    .line 1093
    sget-object v5, Landroid/mtp/MtpDatabase$PropValueType;->VALUE_STRING:Landroid/mtp/MtpDatabase$PropValueType;

    move-object v0, p0

    move v1, p1

    move-wide v2, p3

    move-object v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/mtp/MtpDatabase;->setExtendedObjectPropertyInDB(IJLjava/lang/String;Landroid/mtp/MtpDatabase$PropValueType;Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    .line 1115
    :sswitch_b
    const/16 v0, 0x200f

    goto/16 :goto_0

    .line 1046
    nop

    :sswitch_data_0
    .sparse-switch
        0xdc01 -> :sswitch_b
        0xdc02 -> :sswitch_b
        0xdc03 -> :sswitch_b
        0xdc04 -> :sswitch_b
        0xdc07 -> :sswitch_0
        0xdc09 -> :sswitch_b
        0xdc0b -> :sswitch_b
        0xdc41 -> :sswitch_b
        0xdc44 -> :sswitch_1
        0xdc46 -> :sswitch_b
        0xdc48 -> :sswitch_b
        0xdc4e -> :sswitch_b
        0xdc4f -> :sswitch_b
        0xdc87 -> :sswitch_b
        0xdc88 -> :sswitch_b
        0xdc89 -> :sswitch_b
        0xdc8b -> :sswitch_b
        0xdc8c -> :sswitch_b
        0xdc96 -> :sswitch_b
        0xdc99 -> :sswitch_b
        0xdc9a -> :sswitch_b
        0xdc9b -> :sswitch_b
        0xde93 -> :sswitch_5
        0xde94 -> :sswitch_6
        0xde97 -> :sswitch_7
        0xde99 -> :sswitch_8
        0xde9a -> :sswitch_2
        0xde9b -> :sswitch_9
        0xde9c -> :sswitch_3
        0xde9d -> :sswitch_4
        0xdea1 -> :sswitch_a
    .end sparse-switch
.end method

.method private setObjectReferences(I[I)I
    .locals 22
    .param p1, "handle"    # I
    .param p2, "references"    # [I

    .prologue
    .line 1518
    invoke-direct/range {p0 .. p1}, Landroid/mtp/MtpDatabase;->getServiceDatabase(I)Landroid/mtp/MtpServiceDatabase;

    move-result-object v18

    .line 1519
    .local v18, "serviceDb":Landroid/mtp/MtpServiceDatabase;
    if-eqz v18, :cond_1

    .line 1520
    move-object/from16 v0, v18

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/mtp/MtpServiceDatabase;->setObjectReferences(I[I)I

    move-result v4

    .line 1570
    :cond_0
    :goto_0
    return v4

    .line 1522
    :cond_1
    const/16 v16, 0x0

    .line 1523
    .local v16, "format":I
    const/4 v13, 0x0

    .line 1525
    .local v13, "c":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    sget-object v7, Landroid/mtp/MtpDatabase;->PATH_FORMAT_PROJECTION:[Ljava/lang/String;

    const-string v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v4 .. v11}, Landroid/content/IContentProvider;->query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    .line 1527
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1528
    const/4 v4, 0x2

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 1532
    if-nez v16, :cond_3

    .line 1533
    const/16 v4, 0x2002

    .line 1539
    if-eqz v13, :cond_0

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1530
    :cond_2
    const/16 v4, 0x2009

    .line 1539
    if-eqz v13, :cond_0

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1539
    :cond_3
    if-eqz v13, :cond_4

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1544
    :cond_4
    const/16 v4, 0x3001

    move/from16 v0, v16

    if-ne v0, v4, :cond_7

    .line 1546
    move-object/from16 v0, p2

    array-length v14, v0

    .line 1547
    .local v14, "count":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 1548
    .local v12, "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    move/from16 v0, v17

    if-ge v0, v14, :cond_6

    .line 1549
    aget v4, p2, v17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 1535
    .end local v12    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "count":I
    .end local v17    # "i":I
    :catch_0
    move-exception v15

    .line 1536
    .local v15, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in setObjectReferences - Hashtable section"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1537
    const/16 v4, 0x2002

    .line 1539
    if-eqz v13, :cond_0

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1539
    .end local v15    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_5

    .line 1540
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 1551
    .restart local v12    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v14    # "count":I
    .restart local v17    # "i":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mReferencesTable:Ljava/util/Hashtable;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const/16 v4, 0x2001

    goto/16 :goto_0

    .line 1554
    .end local v12    # "arrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v14    # "count":I
    .end local v17    # "i":I
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/mtp/MtpDatabase;->mDatabaseModified:Z

    .line 1555
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mVolumeName:Ljava/lang/String;

    move/from16 v0, p1

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/provider/MediaStore$Files;->getMtpReferencesUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v19

    .line 1556
    .local v19, "uri":Landroid/net/Uri;
    move-object/from16 v0, p2

    array-length v14, v0

    .line 1557
    .restart local v14    # "count":I
    new-array v0, v14, [Landroid/content/ContentValues;

    move-object/from16 v21, v0

    .line 1558
    .local v21, "valuesList":[Landroid/content/ContentValues;
    const/16 v17, 0x0

    .restart local v17    # "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v14, :cond_8

    .line 1559
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .line 1560
    .local v20, "values":Landroid/content/ContentValues;
    const-string v4, "_id"

    aget v5, p2, v17

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1561
    aput-object v20, v21, v17

    .line 1558
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1564
    .end local v20    # "values":Landroid/content/ContentValues;
    :cond_8
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-interface {v4, v5, v0, v1}, Landroid/content/IContentProvider;->bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-lez v4, :cond_9

    .line 1565
    const/16 v4, 0x2001

    goto/16 :goto_0

    .line 1567
    :catch_1
    move-exception v15

    .line 1568
    .restart local v15    # "e":Landroid/os/RemoteException;
    const-string v4, "MtpDatabase"

    const-string v5, "RemoteException in setObjectReferences"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_9
    const/16 v4, 0x2002

    goto/16 :goto_0
.end method


# virtual methods
.method protected addAnchorFile(Ljava/lang/String;[B)I
    .locals 22
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "content"    # [B

    .prologue
    .line 1586
    const/4 v15, 0x0

    .line 1587
    .local v15, "storageId":I
    const-string v12, ""

    .line 1588
    .local v12, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/mtp/MtpStorage;

    .line 1589
    .local v14, "storage":Landroid/mtp/MtpStorage;
    invoke-virtual {v14}, Landroid/mtp/MtpStorage;->getStorageId()I

    move-result v15

    .line 1590
    if-eqz v15, :cond_0

    .line 1591
    invoke-virtual {v14}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 1595
    .end local v14    # "storage":Landroid/mtp/MtpStorage;
    :cond_1
    if-nez v15, :cond_3

    const/16 v19, -0x1

    .line 1645
    :cond_2
    :goto_0
    return v19

    .line 1596
    :cond_3
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".anchor"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1597
    .local v9, "folderPath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v9}, Landroid/mtp/MtpDatabase;->getParentHandle(ILjava/lang/String;)I

    move-result v11

    .line 1598
    .local v11, "parent":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_4

    const/16 v19, -0x1

    goto :goto_0

    .line 1600
    :cond_4
    const/16 v18, 0x0

    .line 1601
    .local v18, "writeResult":Z
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1602
    .local v8, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1603
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v19

    if-nez v19, :cond_5

    .line 1604
    const/16 v19, -0x1

    goto :goto_0

    .line 1606
    :cond_5
    const/4 v4, 0x0

    .line 1608
    .local v4, "dos":Ljava/io/DataOutputStream;
    if-nez p2, :cond_6

    .line 1609
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v19

    if-nez v19, :cond_7

    const/16 v19, -0x1

    .line 1618
    if-eqz v4, :cond_2

    .line 1620
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1621
    :catch_0
    move-exception v20

    goto :goto_0

    .line 1611
    :cond_6
    :try_start_2
    new-instance v5, Ljava/io/DataOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    invoke-direct {v5, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1612
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .local v5, "dos":Ljava/io/DataOutputStream;
    :try_start_3
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v4, v5

    .line 1614
    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    :cond_7
    const/16 v18, 0x1

    .line 1618
    if-eqz v4, :cond_8

    .line 1620
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1624
    :cond_8
    :goto_1
    if-nez v18, :cond_a

    const/16 v19, -0x1

    goto/16 :goto_0

    .line 1615
    :catch_1
    move-exception v6

    .line 1616
    .local v6, "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v19, "MtpDatabase"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception when writing file "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " to storage: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1618
    if-eqz v4, :cond_8

    .line 1620
    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 1621
    :catch_2
    move-exception v19

    goto :goto_1

    .line 1618
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    :goto_3
    if-eqz v4, :cond_9

    .line 1620
    :try_start_7
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1621
    :cond_9
    :goto_4
    throw v19

    .line 1628
    :cond_a
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 1629
    .local v17, "values":Landroid/content/ContentValues;
    const-string v19, "_data"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    const-string v19, "format"

    const/16 v20, 0x3004

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1631
    const-string/jumbo v19, "parent"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1632
    const-string/jumbo v19, "storage_id"

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1633
    if-nez p2, :cond_b

    const/4 v13, 0x0

    .line 1634
    .local v13, "size":I
    :goto_5
    const-string v19, "_size"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1635
    const-string v19, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1638
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mMediaProvider:Landroid/content/IContentProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/mtp/MtpDatabase;->mObjectsUri:Landroid/net/Uri;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    invoke-interface {v0, v1, v2, v3}, Landroid/content/IContentProvider;->insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 1639
    .local v16, "uri":Landroid/net/Uri;
    if-eqz v16, :cond_c

    .line 1640
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v19

    const/16 v20, 0x2

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    move-result v19

    goto/16 :goto_0

    .line 1633
    .end local v13    # "size":I
    .end local v16    # "uri":Landroid/net/Uri;
    :cond_b
    move-object/from16 v0, p2

    array-length v13, v0

    goto :goto_5

    .line 1642
    .restart local v13    # "size":I
    :catch_3
    move-exception v6

    .line 1643
    .local v6, "e":Landroid/os/RemoteException;
    const-string v19, "MtpDatabase"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "RemoteException in addAnchorFile: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_c
    const/16 v19, -0x1

    goto/16 :goto_0

    .line 1621
    .end local v13    # "size":I
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_4
    move-exception v19

    goto/16 :goto_1

    :catch_5
    move-exception v20

    goto/16 :goto_4

    .line 1618
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v19

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_3

    .line 1615
    .end local v4    # "dos":Ljava/io/DataOutputStream;
    .restart local v5    # "dos":Ljava/io/DataOutputStream;
    :catch_6
    move-exception v6

    move-object v4, v5

    .end local v5    # "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "dos":Ljava/io/DataOutputStream;
    goto/16 :goto_2
.end method

.method public addStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 275
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    return-void
.end method

.method public cleanup()V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mCleaned:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mDeviceServiceDBHelper:Landroid/mtp/MtpDeviceServiceDBHelper;

    invoke-virtual {v0}, Landroid/mtp/MtpDeviceServiceDBHelper;->cleanLegacyData()V

    .line 261
    invoke-direct {p0}, Landroid/mtp/MtpDatabase;->native_finalize()V

    .line 263
    :cond_0
    return-void
.end method

.method public createServiceDB(Landroid/content/Context;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceDBType"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1697
    const-string v0, "MtpDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createServiceDB, serviceDBType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    packed-switch p2, :pswitch_data_0

    .line 1714
    const-string v0, "MtpDatabase"

    const-string v1, "Do not support DB type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :goto_0
    return-void

    .line 1700
    :pswitch_0
    new-instance v0, Landroid/mtp/MtpCalendarServiceDB;

    invoke-direct {v0, p1, p0}, Landroid/mtp/MtpCalendarServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 1701
    invoke-direct {p0, v3}, Landroid/mtp/MtpDatabase;->native_create_ServiceDB_Ref(I)V

    goto :goto_0

    .line 1704
    :pswitch_1
    new-instance v0, Landroid/mtp/MtpContactServiceDB;

    invoke-direct {v0, p1, p0}, Landroid/mtp/MtpContactServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 1705
    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->native_create_ServiceDB_Ref(I)V

    goto :goto_0

    .line 1708
    :pswitch_2
    new-instance v0, Landroid/mtp/MtpCalendarServiceDB;

    invoke-direct {v0, p1, p0}, Landroid/mtp/MtpCalendarServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mCalendarServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 1709
    new-instance v0, Landroid/mtp/MtpContactServiceDB;

    invoke-direct {v0, p1, p0}, Landroid/mtp/MtpContactServiceDB;-><init>(Landroid/content/Context;Landroid/mtp/MtpDatabase;)V

    iput-object v0, p0, Landroid/mtp/MtpDatabase;->mContactServiceDB:Landroid/mtp/MtpServiceDatabase;

    .line 1710
    invoke-direct {p0, v3}, Landroid/mtp/MtpDatabase;->native_create_ServiceDB_Ref(I)V

    .line 1711
    invoke-direct {p0, v4}, Landroid/mtp/MtpDatabase;->native_create_ServiceDB_Ref(I)V

    goto :goto_0

    .line 1698
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 268
    :try_start_0
    invoke-virtual {p0}, Landroid/mtp/MtpDatabase;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 272
    return-void

    .line 270
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final getUUID()[I
    .locals 12

    .prologue
    .line 1678
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    const-string v9, "device_uuid"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1679
    .local v6, "uuidStr":Ljava/lang/String;
    if-nez v6, :cond_0

    .line 1680
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1681
    iget-object v8, p0, Landroid/mtp/MtpDatabase;->mDeviceProperties:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1682
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v8, "device_uuid"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1683
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1685
    .end local v0    # "e":Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 1686
    .local v1, "u":Ljava/util/UUID;
    const/4 v8, 0x4

    new-array v7, v8, [I

    .line 1687
    .local v7, "values":[I
    invoke-virtual {v1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 1688
    .local v2, "lsb":J
    const/4 v8, 0x3

    const-wide/16 v10, -0x1

    and-long/2addr v10, v2

    long-to-int v9, v10

    aput v9, v7, v8

    .line 1689
    const/4 v8, 0x2

    const/16 v9, 0x20

    ushr-long v10, v2, v9

    long-to-int v9, v10

    aput v9, v7, v8

    .line 1690
    invoke-virtual {v1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 1691
    .local v4, "msb":J
    const/4 v8, 0x1

    const-wide/16 v10, -0x1

    and-long/2addr v10, v4

    long-to-int v9, v10

    aput v9, v7, v8

    .line 1692
    const/4 v8, 0x0

    const/16 v9, 0x20

    ushr-long v10, v4, v9

    long-to-int v9, v10

    aput v9, v7, v8

    .line 1693
    return-object v7
.end method

.method public removeStorage(Landroid/mtp/MtpStorage;)V
    .locals 2
    .param p1, "storage"    # Landroid/mtp/MtpStorage;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mStorageMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/mtp/MtpStorage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void
.end method

.method public setServer(Landroid/mtp/MtpServer;)V
    .locals 4
    .param p1, "server"    # Landroid/mtp/MtpServer;

    .prologue
    .line 242
    iput-object p1, p0, Landroid/mtp/MtpDatabase;->mServer:Landroid/mtp/MtpServer;

    .line 246
    :try_start_0
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    :goto_0
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Landroid/mtp/MtpDatabase;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/mtp/MtpDatabase;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    :cond_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    goto :goto_0
.end method
