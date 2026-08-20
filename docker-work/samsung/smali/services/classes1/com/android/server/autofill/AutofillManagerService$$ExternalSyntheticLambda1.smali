.class public final synthetic Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/infra/AbstractMasterSystemService$Visitor;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final visit(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerService$$ExternalSyntheticLambda1;->f$0:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->$r8$lambda$81kv415RrD8dk5TEZqjV-RhW2bw(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method
