.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;
.super Ljava/lang/Object;
.source "KnoxMUMContainerPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

.field public final synthetic val$newState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$oldState:Lcom/samsung/android/knox/SemPersonaState;

.field public final synthetic val$personaId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;Lcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;I)V
    .registers 5

    .line 1023
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    iput-object p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    iput p4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1026
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersonaObserver.onStateChange() inside handler state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " old state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v0

    iget v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 1029
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 1031
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$oldState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$smtranslateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v8

    .line 1032
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    invoke-static {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$smtranslateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v9

    const/4 v10, 0x0

    if-eq v9, v8, :cond_75

    .line 1034
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_68

    .line 1036
    array-length v12, v11

    move v13, v10

    :goto_55
    if-ge v13, v12, :cond_75

    aget-object v2, v11, v13

    .line 1037
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_55

    .line 1040
    :cond_68
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v1, v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    move v4, v7

    move v5, v8

    move v6, v9

    invoke-static/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerStateChangeIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;IIII)V

    .line 1045
    :cond_75
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_89

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$newState:Lcom/samsung/android/knox/SemPersonaState;

    sget-object v2, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/SemPersonaState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 1046
    :cond_89
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a8

    .line 1048
    array-length v1, v0

    :goto_98
    if-ge v10, v1, :cond_b2

    aget-object v2, v0, v10

    .line 1049
    iget-object v3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v3, v3, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iget v4, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static {v3, v2, v4, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_98

    .line 1052
    :cond_a8
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->this$1:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;

    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    const/4 v1, 0x0

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$3$1;->val$personaId:I

    invoke-static {v0, v1, p0, v7}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$msendContainerAdminLockIntent(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;II)V

    :cond_b2
    return-void
.end method
