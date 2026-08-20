.class public final synthetic Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->onServicesDisabled(ILandroid/util/ArraySet;)V

    return-void
.end method
