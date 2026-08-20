.class public Lcom/android/server/pm/pkg/PackageStateImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/PackageStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field public static final EXTERNAL_STORAGE:I = 0x2

.field public static final FORCE_QUERYABLE_OVERRIDE:I = 0x200

.field public static final HIDDEN_UNTIL_INSTALLED:I = 0x400

.field public static final INSTALL_PERMISSIONS_FIXED:I = 0x800

.field public static final ODM:I = 0x100

.field public static final OEM:I = 0x8

.field public static final PRIVILEGED:I = 0x4

.field public static final PRODUCT:I = 0x20

.field public static final REQUIRED_FOR_SYSTEM_USER:I = 0x80

.field public static final SYSTEM:I = 0x1

.field public static final SYSTEM_EXT:I = 0x40

.field public static final UPDATED_SYSTEM_APP:I = 0x2000

.field public static final UPDATE_AVAILABLE:I = 0x1000

.field public static final VENDOR:I = 0x10


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
