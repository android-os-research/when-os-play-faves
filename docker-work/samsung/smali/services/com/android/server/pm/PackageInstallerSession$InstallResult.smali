.class public Lcom/android/server/pm/PackageInstallerSession$InstallResult;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallResult"
.end annotation


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final session:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V
    .registers 3

    .line 2729
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2730
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    .line 2731
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    return-void
.end method
