.class public Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;
.super Landroid/os/AsyncTask;
.source "DeveloperModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/DeveloperModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemPropPoker"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 560
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 560
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/restriction/DeveloperModeSettings$SystemPropPoker;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 10

    const-string p0, "DeveloperModeSettings"

    const/4 p1, 0x0

    :try_start_3
    const-string v0, "Start System Poker - ServiceManager.listServices()"

    .line 565
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-static {}, Landroid/os/ServiceManager;->listServices()[Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_55

    if-eqz v0, :cond_50

    .line 570
    array-length v1, v0

    if-nez v1, :cond_12

    goto :goto_50

    .line 574
    :cond_12
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_15
    if-ge v3, v1, :cond_4f

    aget-object v4, v0, v3

    if-eqz v4, :cond_4c

    .line 578
    :try_start_1b
    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 580
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    const v7, 0x5f535052

    .line 581
    invoke-interface {v5, v7, v6, p1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 582
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_2e} :catch_4c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_2e} :catch_2f

    goto :goto_4c

    :catch_2f
    move-exception v5

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Someone wrote a bad service \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\' that doesn\'t like to be poked: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :catch_4c
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_4f
    return-object p1

    :cond_50
    :goto_50
    const-string v0, " System Poker - Failed to get services"

    .line 571
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_55
    return-object p1
.end method
