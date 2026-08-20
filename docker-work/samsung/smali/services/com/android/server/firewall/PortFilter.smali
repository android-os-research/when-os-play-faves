.class public Lcom/android/server/firewall/PortFilter;
.super Ljava/lang/Object;
.source "PortFilter.java"

# interfaces
.implements Lcom/android/server/firewall/Filter;


# static fields
.field public static final ATTR_EQUALS:Ljava/lang/String; = "equals"

.field public static final ATTR_MAX:Ljava/lang/String; = "max"

.field public static final ATTR_MIN:Ljava/lang/String; = "min"

.field public static final FACTORY:Lcom/android/server/firewall/FilterFactory;

.field public static final NO_BOUND:I = -0x1


# instance fields
.field public final mLowerBound:I

.field public final mUpperBound:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 56
    new-instance v0, Lcom/android/server/firewall/PortFilter$1;

    const-string/jumbo v1, "port"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/PortFilter$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/PortFilter;->FACTORY:Lcom/android/server/firewall/FilterFactory;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    .line 40
    iput p2, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/firewall/PortFilter-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/firewall/PortFilter;-><init>(II)V

    return-void
.end method


# virtual methods
.method public matches(Lcom/android/server/firewall/IntentFirewall;Landroid/content/ComponentName;Landroid/content/Intent;IILjava/lang/String;I)Z
    .registers 8

    .line 47
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_c

    .line 49
    invoke-virtual {p1}, Landroid/net/Uri;->getPort()I

    move-result p1

    goto :goto_d

    :cond_c
    move p1, p2

    :goto_d
    if-eq p1, p2, :cond_1d

    .line 51
    iget p3, p0, Lcom/android/server/firewall/PortFilter;->mLowerBound:I

    if-eq p3, p2, :cond_15

    if-gt p3, p1, :cond_1d

    :cond_15
    iget p0, p0, Lcom/android/server/firewall/PortFilter;->mUpperBound:I

    if-eq p0, p2, :cond_1b

    if-lt p0, p1, :cond_1d

    :cond_1b
    const/4 p0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return p0
.end method
