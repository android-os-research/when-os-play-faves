.class public final synthetic Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/friends/FrsServiceImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lcom/android/server/sepunion/friends/FrsServiceImpl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->$r8$lambda$EZNu9R2KSkxk4ix6DgWZ-m4pVPE(Lcom/android/server/sepunion/friends/FrsServiceImpl;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
