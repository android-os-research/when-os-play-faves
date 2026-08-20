.class public interface abstract Lvendor/samsung/hardware/biometrics/face/ISehFace;
.super Ljava/lang/Object;
.source "ISehFace.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/hardware/biometrics/face/ISehFace$Stub;,
        Lvendor/samsung/hardware/biometrics/face/ISehFace$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;

.field public static final HASH:Ljava/lang/String; = "cda505302765c5489735c1781dc6203a76abaa1f"

.field public static final VERSION:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "vendor$samsung$hardware$biometrics$face$ISehFace"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 223
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/hardware/biometrics/face/ISehFace;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract createSession(IILandroid/hardware/biometrics/face/ISessionCallback;)Lvendor/samsung/hardware/biometrics/face/ISehSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceHash()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getInterfaceVersion()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getServicePid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
