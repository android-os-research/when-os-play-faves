.class public interface abstract Lcom/android/internal/net/IDomainFilterEventListener;
.super Ljava/lang/Object;
.source "IDomainFilterEventListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/IDomainFilterEventListener$Stub;,
        Lcom/android/internal/net/IDomainFilterEventListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com$android$internal$net$IDomainFilterEventListener"

    const/16 v1, 0x24

    const/16 v2, 0x2e

    .line 115
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/IDomainFilterEventListener;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract onDomainFilterReportEvent(IIJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
