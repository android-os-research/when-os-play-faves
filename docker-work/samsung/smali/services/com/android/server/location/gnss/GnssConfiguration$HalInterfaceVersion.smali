.class public Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;
.super Ljava/lang/Object;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HalInterfaceVersion"
.end annotation


# instance fields
.field public final mMajor:I

.field public final mMinor:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMajor:I

    .line 101
    iput p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;->mMinor:I

    return-void
.end method
