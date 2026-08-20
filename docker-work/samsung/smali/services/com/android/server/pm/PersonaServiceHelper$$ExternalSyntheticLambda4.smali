.class public final synthetic Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda4;->f$0:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 1

    iget p0, p0, Lcom/android/server/pm/PersonaServiceHelper$$ExternalSyntheticLambda4;->f$0:I

    invoke-static {p0}, Lcom/android/server/pm/PersonaServiceHelper;->$r8$lambda$ku5ExOb1b9Sn_JOjVwHH8to4f3c(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
