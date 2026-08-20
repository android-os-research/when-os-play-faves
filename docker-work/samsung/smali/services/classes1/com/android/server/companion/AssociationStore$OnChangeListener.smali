.class public interface abstract Lcom/android/server/companion/AssociationStore$OnChangeListener;
.super Ljava/lang/Object;
.source "AssociationStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/AssociationStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnChangeListener"
.end annotation


# virtual methods
.method public onAssociationAdded(Landroid/companion/AssociationInfo;)V
    .registers 2

    return-void
.end method

.method public onAssociationChanged(ILandroid/companion/AssociationInfo;)V
    .registers 5

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_15

    const/4 v1, 0x2

    if-eq p1, v1, :cond_11

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_1c

    :cond_c
    const/4 p1, 0x0

    .line 67
    invoke-interface {p0, p2, p1}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    goto :goto_1c

    .line 63
    :cond_11
    invoke-interface {p0, p2, v0}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V

    goto :goto_1c

    .line 59
    :cond_15
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationRemoved(Landroid/companion/AssociationInfo;)V

    goto :goto_1c

    .line 55
    :cond_19
    invoke-interface {p0, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationAdded(Landroid/companion/AssociationInfo;)V

    :goto_1c
    return-void
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 2

    return-void
.end method

.method public onAssociationUpdated(Landroid/companion/AssociationInfo;Z)V
    .registers 3

    return-void
.end method
