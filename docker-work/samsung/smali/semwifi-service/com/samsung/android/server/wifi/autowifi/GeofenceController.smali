.class interface abstract Lcom/samsung/android/server/wifi/autowifi/GeofenceController;
.super Ljava/lang/Object;
.source "GeofenceController.java"


# virtual methods
.method public abstract addInRangedNetwork(Ljava/lang/String;)V
.end method

.method public abstract dump()Ljava/lang/String;
.end method

.method public abstract getInRangedWifiConfigKeys()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeFromInRangedNetworks(Ljava/lang/String;)V
.end method
