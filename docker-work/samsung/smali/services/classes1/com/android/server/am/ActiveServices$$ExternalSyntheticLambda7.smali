.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda7;->f$0:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/server/am/ActiveServices;->$r8$lambda$UcdKUNT0BfDfplUsPw_hSdo6K8I(Ljava/util/ArrayList;)V

    return-void
.end method
