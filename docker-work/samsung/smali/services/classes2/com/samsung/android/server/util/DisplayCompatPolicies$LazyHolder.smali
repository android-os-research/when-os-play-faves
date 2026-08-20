.class public Lcom/samsung/android/server/util/DisplayCompatPolicies$LazyHolder;
.super Ljava/lang/Object;
.source "DisplayCompatPolicies.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/util/DisplayCompatPolicies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LazyHolder"
.end annotation


# static fields
.field public static final sDisplayCompatPolicies:Lcom/samsung/android/server/util/DisplayCompatPolicies;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 73
    new-instance v0, Lcom/samsung/android/server/util/DisplayCompatPolicies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/server/util/DisplayCompatPolicies;-><init>(Lcom/samsung/android/server/util/DisplayCompatPolicies-IA;)V

    sput-object v0, Lcom/samsung/android/server/util/DisplayCompatPolicies$LazyHolder;->sDisplayCompatPolicies:Lcom/samsung/android/server/util/DisplayCompatPolicies;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
