.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;
.super Ljava/lang/Object;
.source "BytesToNameCanonicalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TableInfo"
.end annotation


# instance fields
.field public final collCount:I

.field public final collEnd:I

.field public final collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

.field public final count:I

.field public final longestCollisionList:I

.field public final mainHash:[I

.field public final mainHashMask:I

.field public final mainNames:[Lcom/fasterxml/jackson/core/sym/Name;


# direct methods
.method public constructor <init>(I[I[Lcom/fasterxml/jackson/core/sym/Name;)V
    .locals 2
    .param p1, "mainHashMask"    # I
    .param p2, "mainHash"    # [I
    .param p3, "mainNames"    # [Lcom/fasterxml/jackson/core/sym/Name;

    .prologue
    const/4 v1, 0x0

    .line 1129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1130
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1131
    const/16 v0, 0x3f

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1132
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1133
    iput-object p3, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1135
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1136
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1137
    iput v1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1138
    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;)V
    .locals 1
    .param p1, "src"    # Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;

    .prologue
    .line 1141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1142
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_count:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->count:I

    .line 1143
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHashMask:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHashMask:I

    .line 1144
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainHash:[I

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainHash:[I

    .line 1145
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->mainNames:[Lcom/fasterxml/jackson/core/sym/Name;

    .line 1146
    iget-object v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    iput-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collList:[Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1147
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collCount:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collCount:I

    .line 1148
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_collEnd:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->collEnd:I

    .line 1149
    iget v0, p1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;->_longestCollisionList:I

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$TableInfo;->longestCollisionList:I

    .line 1150
    return-void
.end method
