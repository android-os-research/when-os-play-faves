.class public Lcom/android/server/chimera/PreferenceProvider;
.super Landroid/content/ContentProvider;
.source "PreferenceProvider.java"


# static fields
.field public static final CUSTOM_MODE_AGGRESSIVE:Ljava/lang/String; = "Aggressive"

.field public static final CUSTOM_MODE_CONSERVATIVE:Ljava/lang/String; = "Conservative"

.field public static final CUSTOM_MODE_DEFAULT:Ljava/lang/String; = "Default"

.field public static final FIELD_NAME_CURRENT_MODE:Ljava/lang/String; = "CURRENT_MODE"

.field public static final FIELD_NAME_SUPPORTED_MODE:Ljava/lang/String; = "SUPPORTED_MODE"

.field public static final FIELD_NAME_VERSION:Ljava/lang/String; = "VERSION"

.field public static final TAG:Ljava/lang/String; = "PreferenceProvider"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 2

    const-string p0, ""

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11

    const-string p2, "ChimeraManagerService"

    .line 50
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    check-cast p2, Lcom/android/server/chimera/ChimeraManagerService;

    const-string p3, ""

    if-eqz p2, :cond_4b

    .line 53
    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraManager()Lcom/android/server/chimera/ChimeraManager;

    move-result-object p2

    if-eqz p2, :cond_4b

    .line 56
    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManager;->getSettingRepository()Lcom/android/server/chimera/SettingRepository;

    move-result-object p3

    .line 58
    invoke-virtual {p2}, Lcom/android/server/chimera/ChimeraManager;->getVersion()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Default,Conservative"

    .line 61
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeDefault()Z

    move-result p5

    if-eqz p5, :cond_33

    .line 62
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ",Aggressive"

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 65
    :cond_33
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p5

    if-eqz p5, :cond_45

    .line 66
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p3

    if-eqz p3, :cond_42

    const-string p3, "Conservative"

    goto :goto_47

    :cond_42
    const-string p3, "Aggressive"

    goto :goto_47

    :cond_45
    const-string p3, "Default"

    :goto_47
    move-object v4, p3

    move-object p3, p2

    move-object p2, v4

    goto :goto_4d

    :cond_4b
    move-object p2, p3

    move-object p4, p2

    .line 79
    :goto_4d
    new-instance p5, Landroid/database/MatrixCursor;

    const-string v0, "VERSION"

    const-string v1, "SUPPORTED_MODE"

    const-string v2, "CURRENT_MODE"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p5, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 80
    invoke-virtual {p5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v3

    .line 81
    invoke-virtual {v3, v0, p3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 82
    invoke-virtual {v3, v1, p4}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 83
    invoke-virtual {v3, v2, p2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 85
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p5, p0, p1}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p5
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    const-string p0, "ChimeraManagerService"

    .line 92
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/ChimeraManagerService;

    const/4 p1, 0x0

    if-eqz p0, :cond_72

    .line 95
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManagerService;->getChimeraManager()Lcom/android/server/chimera/ChimeraManager;

    move-result-object p0

    if-eqz p0, :cond_72

    .line 98
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->getSettingRepository()Lcom/android/server/chimera/SettingRepository;

    move-result-object p3

    const-string p4, "MODE"

    .line 100
    invoke-virtual {p2, p4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "Aggressive"

    .line 102
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x1

    const-string v1, "PreferenceProvider"

    if-eqz p4, :cond_3f

    .line 103
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-eqz p2, :cond_33

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p2

    if-nez p2, :cond_33

    return p1

    :cond_33
    const-string p2, "custom mode = true, false"

    .line 107
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-interface {p3, v0, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto :goto_72

    :cond_3f
    const-string p4, "Conservative"

    .line 113
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_60

    .line 114
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-eqz p2, :cond_54

    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isConservativeMode()Z

    move-result p2

    if-eqz p2, :cond_54

    return p1

    :cond_54
    const-string p2, "custom mode = true, true"

    .line 118
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-interface {p3, v0, v0}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    goto :goto_72

    .line 125
    :cond_60
    invoke-interface {p3}, Lcom/android/server/chimera/SettingRepository;->isCustomMode()Z

    move-result p2

    if-nez p2, :cond_67

    return p1

    :cond_67
    const-string p2, "custom mode = false, false"

    .line 129
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p3, p1, p1}, Lcom/android/server/chimera/SettingRepository;->enableCustomMode(ZZ)V

    .line 133
    invoke-virtual {p0}, Lcom/android/server/chimera/ChimeraManager;->createPolicyHandler()V

    :cond_72
    :goto_72
    return p1
.end method
