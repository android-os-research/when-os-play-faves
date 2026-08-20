.class public Lcom/android/server/pm/PackageManagerException;
.super Ljava/lang/Exception;
.source "PackageManagerException.java"


# instance fields
.field public final error:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .line 33
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 34
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .line 38
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 28
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/16 p1, -0x6e

    .line 29
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/16 p1, -0x6e

    .line 44
    iput p1, p0, Lcom/android/server/pm/PackageManagerException;->error:I

    return-void
.end method

.method public static from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 49
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    .line 50
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    const/16 v2, -0x6e

    invoke-direct {v0, v2, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
