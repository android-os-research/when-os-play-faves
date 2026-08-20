.class public final synthetic Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/pm/PersonaManagerService;->$r8$lambda$KHKMHTWZussw6KeVSbPwOMjaE7M(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
