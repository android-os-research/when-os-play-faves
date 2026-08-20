.class public interface abstract Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;
.super Ljava/lang/Object;
.source "ISehHdrSolution.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Stub;,
        Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 127
    const-string v0, "vendor$samsung$frameworks$hdrsolution$ISehHdrSolution"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lvendor/samsung/frameworks/hdrsolution/ISehHdrSolution;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract updateHdrLayerState(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
