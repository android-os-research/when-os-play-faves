.class public Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;
.super Ljava/lang/Object;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PerFileChecksum"
.end annotation


# instance fields
.field public final mChecksums:[Landroid/content/pm/Checksum;

.field public final mSignature:[B


# direct methods
.method public constructor <init>([Landroid/content/pm/Checksum;[B)V
    .registers 3

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 493
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    .line 494
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    return-void
.end method


# virtual methods
.method public getChecksums()[Landroid/content/pm/Checksum;
    .registers 1

    .line 498
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mChecksums:[Landroid/content/pm/Checksum;

    return-object p0
.end method

.method public getSignature()[B
    .registers 1

    .line 502
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->mSignature:[B

    return-object p0
.end method
