.class public Lcom/samsung/android/game/gos/IGosSystemService$Default;
.super Ljava/lang/Object;
.source "IGosSystemService.java"

# interfaces
.implements Lcom/samsung/android/game/gos/IGosSystemService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gos/IGosSystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return-object v0
.end method

.method public requestWithJsonNoReturn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
