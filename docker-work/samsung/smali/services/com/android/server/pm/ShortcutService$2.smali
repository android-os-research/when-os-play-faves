.class public Lcom/android/server/pm/ShortcutService$2;
.super Ljava/lang/Object;
.source "ShortcutService.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public test(Landroid/content/pm/PackageInfo;)Z
    .registers 2

    .line 367
    invoke-static {p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$smisInstalled(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .registers 2

    .line 365
    check-cast p1, Landroid/content/pm/PackageInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ShortcutService$2;->test(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method
