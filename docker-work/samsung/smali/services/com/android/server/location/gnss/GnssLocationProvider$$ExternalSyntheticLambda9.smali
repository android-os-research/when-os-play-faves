.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->$r8$lambda$xCNQVG3DKZRjNQM3LoA9h_Xn4HY(Landroid/telephony/CellInfo;)I

    move-result p0

    return p0
.end method
