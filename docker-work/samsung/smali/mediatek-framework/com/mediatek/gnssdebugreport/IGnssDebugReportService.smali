.class public interface abstract Lcom/mediatek/gnssdebugreport/IGnssDebugReportService;
.super Ljava/lang/Object;
.source "IGnssDebugReportService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Stub;,
        Lcom/mediatek/gnssdebugreport/IGnssDebugReportService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.mediatek.gnssdebugreport.IGnssDebugReportService"


# virtual methods
.method public abstract blacklist addListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeListener(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist startDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist stopDebug(Lcom/mediatek/gnssdebugreport/IDebugReportCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
