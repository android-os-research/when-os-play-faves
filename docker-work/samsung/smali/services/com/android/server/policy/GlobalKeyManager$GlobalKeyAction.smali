.class public Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;
.super Ljava/lang/Object;
.source "GlobalKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GlobalKeyAction"
.end annotation


# instance fields
.field public final mComponentName:Landroid/content/ComponentName;

.field public final mDispatchWhenNonInteractive:Z

.field public final synthetic this$0:Lcom/android/server/policy/GlobalKeyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmComponentName(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDispatchWhenNonInteractive(Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/policy/GlobalKeyManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 117
    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->this$0:Lcom/android/server/policy/GlobalKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mComponentName:Landroid/content/ComponentName;

    .line 119
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/GlobalKeyManager$GlobalKeyAction;->mDispatchWhenNonInteractive:Z

    return-void
.end method
