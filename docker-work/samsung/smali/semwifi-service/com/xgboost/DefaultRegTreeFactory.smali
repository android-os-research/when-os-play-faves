.class public final Lcom/xgboost/DefaultRegTreeFactory;
.super Ljava/lang/Object;
.source "DefaultRegTreeFactory.java"

# interfaces
.implements Lcom/xgboost/RegTreeFactory;


# static fields
.field public static INSTANCE:Lcom/xgboost/RegTreeFactory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 7
    new-instance v0, Lcom/xgboost/DefaultRegTreeFactory;

    invoke-direct {v0}, Lcom/xgboost/DefaultRegTreeFactory;-><init>()V

    sput-object v0, Lcom/xgboost/DefaultRegTreeFactory;->INSTANCE:Lcom/xgboost/RegTreeFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final loadTree(Lcom/xgboost/ModelReader;)Lcom/xgboost/RegTree;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    new-instance p0, Lcom/xgboost/RegTreeImpl;

    invoke-direct {p0}, Lcom/xgboost/RegTreeImpl;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/xgboost/RegTreeImpl;->loadModel(Lcom/xgboost/ModelReader;)V

    return-object p0
.end method
