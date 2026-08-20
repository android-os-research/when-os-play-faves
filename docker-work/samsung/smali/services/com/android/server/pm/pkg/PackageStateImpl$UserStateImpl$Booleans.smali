.class public Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageStateImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/pkg/PackageStateImpl$UserStateImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field public static final HIDDEN:I = 0x1

.field public static final INSTALLED:I = 0x2

.field public static final INSTANT_APP:I = 0x4

.field public static final NOT_LAUNCHED:I = 0x8

.field public static final STOPPED:I = 0x10

.field public static final SUSPENDED:I = 0x20

.field public static final VIRTUAL_PRELOAD:I = 0x40


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
