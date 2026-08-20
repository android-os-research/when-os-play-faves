.class public final synthetic Lcom/samsung/android/multiwindow/OpacityPopupForDeX$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/multiwindow/OpacityPopupForDeX;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/multiwindow/OpacityPopupForDeX;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/OpacityPopupForDeX;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/multiwindow/OpacityPopupForDeX$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/multiwindow/OpacityPopupForDeX;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/OpacityPopupForDeX;->dismiss()V

    return-void
.end method
