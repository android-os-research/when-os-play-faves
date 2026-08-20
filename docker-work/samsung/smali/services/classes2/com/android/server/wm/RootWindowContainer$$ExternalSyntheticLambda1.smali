.class public final synthetic Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/wm/RootWindowContainer$$ExternalSyntheticLambda1;->f$0:Landroid/util/ArrayMap;

    check-cast p1, Lcom/android/server/wm/DisplayContent;

    invoke-static {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->$r8$lambda$EWATV8JB6mK4DDDyJr7E6Z1K3LM(Landroid/util/ArrayMap;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method
