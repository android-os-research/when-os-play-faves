.class public final synthetic Lcom/samsung/android/server/wifi/SemRoamingChannelList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemRoamingChannelList;->$r8$lambda$ZCP0leRFUtWvbUQe6vUk_WISk_Y(Lcom/samsung/android/server/wifi/SemRoamingChannelList$ChannelData;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
