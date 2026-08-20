.class public Lcom/android/server/usb/UsbUserSettingsManager;
.super Ljava/lang/Object;
.source "UsbUserSettingsManager.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "UsbUserSettingsManager"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mUser:Landroid/os/UserHandle;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;)V
    .registers 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_20
    const-string v0, "android"

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v0, v1, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUserContext:Landroid/content/Context;
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_20 .. :try_end_29} :catch_32

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    iput-object p2, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    return-void

    .line 73
    :catch_32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Missing android package"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canBeDefault(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;)Z
    .registers 11

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    .line 147
    array-length v1, p2

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_6e

    .line 149
    aget-object v3, p2, v2

    .line 151
    :try_start_d
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_1d

    if-eqz v4, :cond_6b

    .line 168
    :cond_19
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_50

    goto :goto_6b

    .line 157
    :cond_1d
    :try_start_1d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 158
    :goto_20
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    const-string/jumbo v5, "usb-accessory"

    .line 159
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 160
    invoke-static {v4}, Landroid/hardware/usb/AccessoryFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/AccessoryFilter;

    move-result-object v5

    .line 161
    invoke-virtual {v5, p1}, Landroid/hardware/usb/AccessoryFilter;->matches(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_46

    if-eqz v5, :cond_42

    .line 168
    :try_start_3e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_50

    return v6

    .line 166
    :cond_42
    :try_start_42
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_20

    :catchall_46
    move-exception v5

    .line 151
    :try_start_47
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v4

    :try_start_4c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v4

    .line 169
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_6e
    return v0
.end method

.method public canBeDefault(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 11

    .line 103
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbUserSettingsManager;->getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6e

    .line 105
    array-length v1, p2

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_6e

    .line 107
    aget-object v3, p2, v2

    .line 109
    :try_start_d
    iget-object v4, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    if-nez v4, :cond_1d

    if-eqz v4, :cond_6b

    .line 126
    :cond_19
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_50

    goto :goto_6b

    .line 115
    :cond_1d
    :try_start_1d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 116
    :goto_20
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_19

    const-string/jumbo v5, "usb-device"

    .line 117
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 118
    invoke-static {v4}, Landroid/hardware/usb/DeviceFilter;->read(Lorg/xmlpull/v1/XmlPullParser;)Landroid/hardware/usb/DeviceFilter;

    move-result-object v5

    .line 119
    invoke-virtual {v5, p1}, Landroid/hardware/usb/DeviceFilter;->matches(Landroid/hardware/usb/UsbDevice;)Z

    move-result v5
    :try_end_3c
    .catchall {:try_start_1d .. :try_end_3c} :catchall_46

    if-eqz v5, :cond_42

    .line 126
    :try_start_3e
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_41} :catch_50

    return v6

    .line 124
    :cond_42
    :try_start_42
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_46

    goto :goto_20

    :catchall_46
    move-exception v5

    .line 109
    :try_start_47
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_4b

    goto :goto_4f

    :catchall_4b
    move-exception v4

    :try_start_4c
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4f
    throw v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_50} :catch_50

    :catch_50
    move-exception v4

    .line 127
    sget-object v5, Lcom/android/server/usb/UsbUserSettingsManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load component info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6b
    :goto_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_6e
    return v0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 189
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v2

    .line 191
    iget-object v4, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    const-string/jumbo v5, "user_id"

    const-wide v6, 0x10500000001L

    .line 192
    iget-object v8, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 194
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 196
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_2c
    const-wide v11, 0x10b00000001L

    if-ge v8, v6, :cond_7e

    .line 198
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    const-string v14, "device_attached_activities"

    move/from16 p3, v8

    const-wide v7, 0x20b00000004L

    .line 200
    invoke-virtual {v1, v14, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-string v14, "activity"

    .line 203
    new-instance v15, Landroid/content/ComponentName;

    iget-object v9, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v15, v10, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v14, v11, v12, v15}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 207
    iget-object v9, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v9, v13}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getDeviceFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_78

    .line 210
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_63
    if-ge v11, v10, :cond_78

    .line 212
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/hardware/usb/DeviceFilter;

    const-string v13, "filters"

    const-wide v14, 0x20b00000002L

    invoke-virtual {v12, v1, v13, v14, v15}, Landroid/hardware/usb/DeviceFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 217
    :cond_78
    invoke-virtual {v1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v8, p3, 0x1

    goto :goto_2c

    .line 220
    :cond_7e
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, v5}, Lcom/android/server/usb/UsbUserSettingsManager;->queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 222
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_8e
    if-ge v7, v6, :cond_f9

    .line 225
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    const-string v9, "accessory_attached_activities"

    const-wide v13, 0x20b00000005L

    .line 227
    invoke-virtual {v1, v9, v13, v14}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v13, "activity"

    .line 230
    new-instance v14, Landroid/content/ComponentName;

    iget-object v15, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v15, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v12, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v14, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v11, 0x10b00000001L

    invoke-static {v1, v13, v11, v12, v14}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 234
    iget-object v13, v0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v13, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->getAccessoryFilters(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_e3

    .line 237
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_c3
    if-ge v14, v13, :cond_e3

    .line 239
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/usb/AccessoryFilter;

    const-string v11, "filters"

    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    invoke-virtual {v15, v1, v11, v5, v6}, Landroid/hardware/usb/AccessoryFilter;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v14, v14, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_c3

    :cond_e3
    move-object v12, v5

    move/from16 v16, v6

    const-wide v5, 0x20b00000002L

    .line 244
    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v7, v7, 0x1

    move-object v5, v12

    move/from16 v6, v16

    const-wide v11, 0x10b00000001L

    goto :goto_8e

    .line 246
    :cond_f9
    monitor-exit v4
    :try_end_fa
    .catchall {:try_start_b .. :try_end_fa} :catchall_fe

    .line 248
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_fe
    move-exception v0

    .line 246
    :try_start_ff
    monitor-exit v4
    :try_end_100
    .catchall {:try_start_ff .. :try_end_100} :catchall_fe

    throw v0
.end method

.method public final getPackageActivities(Ljava/lang/String;)[Landroid/content/pm/ActivityInfo;
    .registers 3

    .line 179
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x81

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 181
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return-object p0

    :catch_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public queryIntentActivities(Landroid/content/Intent;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbUserSettingsManager;->mUser:Landroid/os/UserHandle;

    .line 90
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const/16 v1, 0x80

    .line 89
    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
