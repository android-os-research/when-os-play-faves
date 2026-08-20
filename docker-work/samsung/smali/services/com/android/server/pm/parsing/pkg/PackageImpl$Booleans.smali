.class public Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field public static final CORE_APP:I = 0x1

.field public static final FACTORY_TEST:I = 0x4

.field public static final NATIVE_LIBRARY_ROOT_REQUIRES_ISA:I = 0x400

.field public static final ODM:I = 0x100

.field public static final OEM:I = 0x20

.field public static final PRIVILEGED:I = 0x10

.field public static final PRODUCT:I = 0x80

.field public static final SIGNED_WITH_PLATFORM_KEY:I = 0x200

.field public static final STUB:I = 0x800

.field public static final SYSTEM:I = 0x2

.field public static final SYSTEM_EXT:I = 0x8

.field public static final VENDOR:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
