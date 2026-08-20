.class public final synthetic Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/WindowConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/app/WindowConfiguration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;->f$0:Landroid/app/WindowConfiguration;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/DssController$Tools$$ExternalSyntheticLambda2;->f$0:Landroid/app/WindowConfiguration;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/server/DssController$Tools;->$r8$lambda$Ef1Njm6mO9S-7i_wflPqaRf9hJ8(Landroid/app/WindowConfiguration;Landroid/graphics/Rect;)V

    return-void
.end method
