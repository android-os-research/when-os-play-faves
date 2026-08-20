.class public Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionDump"
.end annotation


# instance fields
.field public onlyParent:Z

.field public onlyReady:Z

.field public onlySessionId:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$SessionDump-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$SessionDump;-><init>()V

    return-void
.end method
