.class public Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;
.super Lcom/android/server/location/settings/SettingsStore;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/settings/LocationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocationUserSettingsStore"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/settings/SettingsStore<",
        "Lcom/android/server/location/settings/LocationUserSettings;",
        ">;"
    }
.end annotation


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/location/settings/LocationSettings;


# direct methods
.method public static synthetic $r8$lambda$3QXsXtJ0eU6mR5qqoaXyPPlL7b8(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Ljava/util/function/Function;Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->lambda$update$0(Ljava/util/function/Function;Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$77qZPZx1j1Thgab3sJzH46ZhGyg(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->lambda$onChange$1(Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/settings/LocationSettings;ILjava/io/File;)V
    .registers 4

    .line 169
    iput-object p1, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    .line 170
    invoke-direct {p0, p3}, Lcom/android/server/location/settings/SettingsStore;-><init>(Ljava/io/File;)V

    .line 171
    iput p2, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->mUserId:I

    return-void
.end method

.method private synthetic lambda$onChange$1(Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    iget p0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->mUserId:I

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings;->fireListeners(ILcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method private synthetic lambda$update$0(Ljava/util/function/Function;Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 3

    .line 186
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 3

    .line 196
    invoke-virtual {p1}, Lcom/android/server/location/settings/LocationUserSettings;->isAdasGnssLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    iget-object p0, p0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x0

    .line 199
    invoke-virtual {p1, p0}, Lcom/android/server/location/settings/LocationUserSettings;->withAdasGnssLocationEnabled(Z)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p1

    :cond_1b
    return-object p1
.end method

.method public onChange(Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 5

    .line 192
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic onChange(Lcom/android/server/location/settings/SettingsStore$VersionedSettings;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 3

    .line 165
    check-cast p1, Lcom/android/server/location/settings/LocationUserSettings;

    check-cast p2, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->onChange(Lcom/android/server/location/settings/LocationUserSettings;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method

.method public read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->this$0:Lcom/android/server/location/settings/LocationSettings;

    iget-object v0, v0, Lcom/android/server/location/settings/LocationSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/location/settings/LocationUserSettings;->read(Landroid/content/res/Resources;ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->filterSettings(Lcom/android/server/location/settings/LocationUserSettings;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic read(ILjava/io/DataInput;)Lcom/android/server/location/settings/SettingsStore$VersionedSettings;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->read(ILjava/io/DataInput;)Lcom/android/server/location/settings/LocationUserSettings;

    move-result-object p0

    return-object p0
.end method

.method public update(Ljava/util/function/Function;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            "Lcom/android/server/location/settings/LocationUserSettings;",
            ">;)V"
        }
    .end annotation

    .line 186
    new-instance v0, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;Ljava/util/function/Function;)V

    invoke-super {p0, v0}, Lcom/android/server/location/settings/SettingsStore;->update(Ljava/util/function/Function;)V

    return-void
.end method

.method public write(Ljava/io/DataOutput;Lcom/android/server/location/settings/LocationUserSettings;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    invoke-virtual {p2, p1}, Lcom/android/server/location/settings/LocationUserSettings;->write(Ljava/io/DataOutput;)V

    return-void
.end method

.method public bridge synthetic write(Ljava/io/DataOutput;Lcom/android/server/location/settings/SettingsStore$VersionedSettings;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    check-cast p2, Lcom/android/server/location/settings/LocationUserSettings;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/settings/LocationSettings$LocationUserSettingsStore;->write(Ljava/io/DataOutput;Lcom/android/server/location/settings/LocationUserSettings;)V

    return-void
.end method
