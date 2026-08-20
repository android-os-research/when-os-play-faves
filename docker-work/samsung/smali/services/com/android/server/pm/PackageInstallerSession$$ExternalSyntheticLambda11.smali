.class public final synthetic Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageInstallerSession;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageInstallerSession;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iput p2, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/pm/PackageInstallerSession;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/pm/PackageInstallerSession;->$r8$lambda$syB78UP9xmbue0nN9LKRyj5mAzE(Lcom/android/server/pm/PackageInstallerSession;I)V

    return-void
.end method
