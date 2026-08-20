.class public final synthetic Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/location/gnss/GnssLocationProvider$SvCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/SLocationProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    return-void
.end method


# virtual methods
.method public final onSvCallback(Landroid/location/GnssStatus;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/location/gnss/GnssManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/SLocationProxy;

    invoke-virtual {p0, p1}, Lcom/android/server/location/gnss/sec/SLocationProxy;->onSvStatusChanged(Landroid/location/GnssStatus;)V

    return-void
.end method
