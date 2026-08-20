.class public interface abstract Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;
.super Ljava/lang/Object;
.source "ISemInterfaceNameProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;
    }
.end annotation


# virtual methods
.method public abstract getInterfaces()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPrimaryInterfaceName()Ljava/lang/String;
.end method

.method public abstract registerPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
.end method

.method public abstract unregisterPrimaryInterfaceListener(Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$PrimaryInterfaceListener;)V
.end method
