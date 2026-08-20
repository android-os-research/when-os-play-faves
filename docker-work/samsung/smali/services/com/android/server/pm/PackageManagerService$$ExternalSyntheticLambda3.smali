.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;->f$0:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/android/server/pm/pkg/mutate/PackageStateMutator;

    invoke-static {v0, p0, p1}, Lcom/android/server/pm/PackageManagerService;->$r8$lambda$QNfG8e00c4GaddGFzwexMw4HdJY(Ljava/lang/String;ZLcom/android/server/pm/pkg/mutate/PackageStateMutator;)V

    return-void
.end method
