.class final Lcom/android/server/pm/PrepareFailure;
.super Lcom/android/server/pm/PackageManagerException;
.source "PrepareFailure.java"


# instance fields
.field public mConflictingPackage:Ljava/lang/String;

.field public mConflictingPermission:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const-string v0, "Failed to prepare for install."

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .line 35
    move-object v0, p2

    check-cast v0, Lcom/android/server/pm/PackageManagerException;

    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 36
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public conflictsWithExistingPermission(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PrepareFailure;
    .registers 3

    .line 41
    iput-object p1, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPermission:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/android/server/pm/PrepareFailure;->mConflictingPackage:Ljava/lang/String;

    return-object p0
.end method
