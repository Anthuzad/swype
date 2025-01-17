.class public Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;
.super Ljava/lang/Object;
.source "OpenWnnDictionaryImpl.java"

# interfaces
.implements Ljp/co/omronsoft/openwnn/WnnDictionary;


# static fields
.field protected static final COLUMN_NAME_CANDIDATE:Ljava/lang/String; = "candidate"

.field protected static final COLUMN_NAME_ID:Ljava/lang/String; = "rowid"

.field protected static final COLUMN_NAME_POS_LEFT:Ljava/lang/String; = "posLeft"

.field protected static final COLUMN_NAME_POS_RIGHT:Ljava/lang/String; = "posRight"

.field protected static final COLUMN_NAME_PREVIOUS_CANDIDATE:Ljava/lang/String; = "prevCandidate"

.field protected static final COLUMN_NAME_PREVIOUS_POS_LEFT:Ljava/lang/String; = "prevPosLeft"

.field protected static final COLUMN_NAME_PREVIOUS_POS_RIGHT:Ljava/lang/String; = "prevPosRight"

.field protected static final COLUMN_NAME_PREVIOUS_STROKE:Ljava/lang/String; = "prevStroke"

.field protected static final COLUMN_NAME_STROKE:Ljava/lang/String; = "stroke"

.field protected static final COLUMN_NAME_TYPE:Ljava/lang/String; = "type"

.field protected static final FAST_QUERY_LENGTH:I = 0x14

.field protected static final LINK_QUERY:Ljava/lang/String; = "select distinct stroke,candidate,posLeft,posRight,type from dic where %s = ? and %s = ? and %s order by type DESC, %s"

.field public static final MAX_CANDIDATE_LENGTH:I = 0x32

.field protected static final MAX_LENGTH_OF_QUERY:I = 0x32

.field protected static final MAX_PATTERN_OF_APPROX:I = 0x6

.field public static final MAX_STROKE_LENGTH:I = 0x32

.field protected static final MAX_WORDS_IN_LEARN_DICTIONARY:I = 0x7d0

.field protected static final MAX_WORDS_IN_USER_DICTIONARY:I = 0x64

.field protected static final NORMAL_QUERY:Ljava/lang/String; = "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

.field protected static final OFFSET_FREQUENCY_OF_LEARN_DICTIONARY:I = 0x7d0

.field protected static final OFFSET_FREQUENCY_OF_USER_DICTIONARY:I = 0x3e8

.field protected static final TABLE_NAME_DIC:Ljava/lang/String; = "dic"

.field protected static final TYPE_NAME_LEARN:I = 0x1

.field protected static final TYPE_NAME_USER:I


# instance fields
.field protected mCountCursor:I

.field protected mDbCursor:Landroid/database/sqlite/SQLiteCursor;

.field protected mDbDic:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDicFilePath:Ljava/lang/String;

.field protected mExactQueryArgs:[Ljava/lang/String;

.field protected mExactQuerySqlOrderByFreq:Ljava/lang/String;

.field protected mExactQuerySqlOrderByKey:Ljava/lang/String;

.field protected mFastLinkQuerySqlOrderByFreq:Ljava/lang/String;

.field protected mFastLinkQuerySqlOrderByKey:Ljava/lang/String;

.field protected mFastPrefixQuerySqlOrderByFreq:Ljava/lang/String;

.field protected mFastPrefixQuerySqlOrderByKey:Ljava/lang/String;

.field protected mFastQueryArgs:[Ljava/lang/String;

.field protected mFrequencyOffsetOfLearnDictionary:I

.field protected mFrequencyOffsetOfUserDictionary:I

.field protected mFullLinkQuerySqlOrderByFreq:Ljava/lang/String;

.field protected mFullLinkQuerySqlOrderByKey:Ljava/lang/String;

.field protected mFullPrefixQuerySqlOrderByFreq:Ljava/lang/String;

.field protected mFullPrefixQuerySqlOrderByKey:Ljava/lang/String;

.field protected mFullQueryArgs:[Ljava/lang/String;

.field protected mTypeOfQuery:I

.field protected mWnnWork:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "dicLibPath"    # Ljava/lang/String;

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .param p1, "dicLibPath"    # Ljava/lang/String;
    .param p2, "dicFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    .line 118
    const-string/jumbo v2, ""

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDicFilePath:Ljava/lang/String;

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    .line 124
    iput v8, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 126
    const/4 v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mTypeOfQuery:I

    .line 152
    new-array v2, v7, [Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQueryArgs:[Ljava/lang/String;

    .line 154
    const/16 v2, 0x15e

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullQueryArgs:[Ljava/lang/String;

    .line 157
    const/16 v2, 0x8c

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastQueryArgs:[Ljava/lang/String;

    .line 160
    const/4 v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    .line 162
    const/4 v2, -0x1

    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    .line 193
    invoke-static {p1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->createWnnWork(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    .line 195
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_195

    if-eqz p2, :cond_195

    .line 197
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const/16 v4, 0x32

    const/4 v5, 0x6

    const-string/jumbo v6, "stroke"

    invoke-static {v2, v3, v4, v5, v6}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->createQueryStringBase(JIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "queryFullBaseString":Ljava/lang/String;
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const/16 v4, 0x14

    const/4 v5, 0x6

    const-string/jumbo v6, "stroke"

    invoke-static {v2, v3, v4, v5, v6}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->createQueryStringBase(JIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "queryFastBaseString":Ljava/lang/String;
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "%s=?"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "stroke"

    aput-object v6, v5, v8

    .line 204
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "rowid"

    aput-object v6, v5, v8

    .line 205
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 203
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQuerySqlOrderByFreq:Ljava/lang/String;

    .line 207
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "%s=?"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "stroke"

    aput-object v6, v5, v8

    .line 208
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string/jumbo v4, "stroke"

    aput-object v4, v3, v7

    .line 207
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQuerySqlOrderByKey:Ljava/lang/String;

    .line 210
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    const-string/jumbo v4, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "rowid"

    aput-object v6, v5, v8

    .line 211
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 210
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullPrefixQuerySqlOrderByFreq:Ljava/lang/String;

    .line 213
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    const-string/jumbo v4, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "rowid"

    aput-object v6, v5, v8

    .line 214
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 213
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastPrefixQuerySqlOrderByFreq:Ljava/lang/String;

    .line 216
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    const-string/jumbo v4, "stroke"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullPrefixQuerySqlOrderByKey:Ljava/lang/String;

    .line 219
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s order by type DESC, %s"

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v0, v3, v8

    const-string/jumbo v4, "stroke"

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastPrefixQuerySqlOrderByKey:Ljava/lang/String;

    .line 222
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s = ? and %s = ? and %s order by type DESC, %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "prevStroke"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prevCandidate"

    aput-object v4, v3, v7

    aput-object v1, v3, v9

    const-string/jumbo v4, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "rowid"

    aput-object v6, v5, v8

    .line 224
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 222
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullLinkQuerySqlOrderByFreq:Ljava/lang/String;

    .line 226
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s = ? and %s = ? and %s order by type DESC, %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "prevStroke"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prevCandidate"

    aput-object v4, v3, v7

    aput-object v0, v3, v9

    const-string/jumbo v4, "%s DESC"

    new-array v5, v7, [Ljava/lang/Object;

    const-string/jumbo v6, "rowid"

    aput-object v6, v5, v8

    .line 228
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    .line 226
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastLinkQuerySqlOrderByFreq:Ljava/lang/String;

    .line 230
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s = ? and %s = ? and %s order by type DESC, %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "prevStroke"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prevCandidate"

    aput-object v4, v3, v7

    aput-object v1, v3, v9

    const-string/jumbo v4, "stroke"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullLinkQuerySqlOrderByKey:Ljava/lang/String;

    .line 233
    const-string/jumbo v2, "select distinct stroke,candidate,posLeft,posRight,type from dic where %s = ? and %s = ? and %s order by type DESC, %s"

    new-array v3, v11, [Ljava/lang/Object;

    const-string/jumbo v4, "prevStroke"

    aput-object v4, v3, v8

    const-string/jumbo v4, "prevCandidate"

    aput-object v4, v3, v7

    aput-object v0, v3, v9

    const-string/jumbo v4, "stroke"

    aput-object v4, v3, v10

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastLinkQuerySqlOrderByKey:Ljava/lang/String;

    .line 238
    :try_start_189
    iput-object p2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDicFilePath:Ljava/lang/String;

    .line 239
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->setInUseState(Z)Z

    .line 242
    const-string/jumbo v2, "dic"

    invoke-virtual {p0, v2}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->createDictionaryTable(Ljava/lang/String;)V
    :try_end_195
    .catch Landroid/database/SQLException; {:try_start_189 .. :try_end_195} :catch_196

    .line 246
    .end local v0    # "queryFastBaseString":Ljava/lang/String;
    .end local v1    # "queryFullBaseString":Ljava/lang/String;
    :cond_195
    :goto_195
    return-void

    .restart local v0    # "queryFastBaseString":Ljava/lang/String;
    .restart local v1    # "queryFullBaseString":Ljava/lang/String;
    :catch_196
    move-exception v2

    goto :goto_195
.end method


# virtual methods
.method public addWordToUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 4
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 951
    const/4 v1, 0x1

    new-array v0, v1, [Ljp/co/omronsoft/openwnn/WnnWord;

    .line 952
    .local v0, "words":[Ljp/co/omronsoft/openwnn/WnnWord;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 954
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->addWordToUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v1

    return v1
.end method

.method public addWordToUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 18
    .param p1, "word"    # [Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 867
    const/4 v14, 0x0

    .line 869
    .local v14, "result":I
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_176

    .line 873
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rowid"

    aput-object v5, v3, v4

    const-string/jumbo v4, "%s=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 875
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 873
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    check-cast v12, Landroid/database/sqlite/SQLiteCursor;

    .line 877
    .local v12, "cursor":Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v11

    .line 878
    .local v11, "count":I
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 880
    move-object/from16 v0, p1

    array-length v1, v0

    add-int/2addr v1, v11

    const/16 v2, 0x64

    if-le v1, v2, :cond_4a

    .line 882
    const/4 v1, -0x1

    .line 944
    .end local v11    # "count":I
    .end local v12    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    :goto_49
    return v1

    .line 884
    .restart local v11    # "count":I
    .restart local v12    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    :cond_4a
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 886
    :try_start_51
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v15, "strokeSQL":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .local v9, "candidateSQL":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "index":I
    :goto_5c
    move-object/from16 v0, p1

    array-length v1, v0

    if-ge v13, v1, :cond_163

    .line 890
    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fc

    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 891
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_fc

    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 892
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_fc

    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 893
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_fc

    .line 894
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 895
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 896
    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-static {v15, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 897
    aget-object v1, p1, v13

    iget-object v1, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rowid"

    aput-object v5, v3, v4

    const-string/jumbo v4, "%s=%d and %s=%s and %s=%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 903
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "stroke"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "candidate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 904
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 902
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 900
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v12, v0

    .line 907
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_100

    .line 912
    const/4 v14, -0x2

    .line 926
    :goto_f8
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 927
    const/4 v12, 0x0

    .line 889
    :cond_fc
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_5c

    .line 914
    :cond_100
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 916
    .local v10, "content":Landroid/content/ContentValues;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 917
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string/jumbo v1, "stroke"

    aget-object v2, p1, v13

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    const-string/jumbo v1, "candidate"

    aget-object v2, p1, v13

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string/jumbo v1, "posLeft"

    aget-object v2, p1, v13

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 921
    const-string/jumbo v1, "posRight"

    aget-object v2, p1, v13

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 923
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_152
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_152} :catch_153
    .catchall {:try_start_51 .. :try_end_152} :catchall_179

    goto :goto_f8

    .line 935
    .end local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .end local v10    # "content":Landroid/content/ContentValues;
    .end local v13    # "index":I
    .end local v15    # "strokeSQL":Ljava/lang/StringBuilder;
    :catch_153
    move-exception v1

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 936
    if-eqz v12, :cond_160

    .line 937
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->close()V

    :cond_160
    const/4 v1, -0x1

    goto/16 :goto_49

    .line 930
    .restart local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .restart local v13    # "index":I
    .restart local v15    # "strokeSQL":Ljava/lang/StringBuilder;
    :cond_163
    :try_start_163
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_16a
    .catch Landroid/database/SQLException; {:try_start_163 .. :try_end_16a} :catch_153
    .catchall {:try_start_163 .. :try_end_16a} :catchall_179

    .line 935
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 936
    if-eqz v12, :cond_176

    .line 937
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .end local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .end local v11    # "count":I
    .end local v12    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .end local v13    # "index":I
    .end local v15    # "strokeSQL":Ljava/lang/StringBuilder;
    :cond_176
    move v1, v14

    .line 944
    goto/16 :goto_49

    .line 935
    .restart local v11    # "count":I
    .restart local v12    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    :catchall_179
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 936
    if-eqz v12, :cond_186

    .line 937
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteCursor;->close()V

    :cond_186
    throw v1
.end method

.method public clearApproxPattern()V
    .registers 5

    .prologue
    .line 764
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_d

    .line 765
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->clearApproxPatterns(J)V

    .line 767
    :cond_d
    return-void
.end method

.method public clearDictionary()I
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 337
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13

    .line 338
    iput v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    .line 339
    iput v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    .line 341
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->clearDictionaryParameters(J)I

    move-result v0

    .line 343
    :cond_13
    return v0
.end method

.method public clearLearnDictionary()I
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 854
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_26

    .line 855
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "delete from %s where %s=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dic"

    aput-object v3, v2, v5

    const-string/jumbo v3, "type"

    aput-object v3, v2, v4

    const/4 v3, 0x2

    .line 856
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 855
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 860
    :cond_26
    return v5
.end method

.method public clearUserDictionary()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 841
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_26

    .line 842
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "delete from %s where %s=%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "dic"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 843
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 842
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 847
    :cond_26
    return v5
.end method

.method protected createDictionaryTable(Ljava/lang/String;)V
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;

    .prologue
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "create table if not exists "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (rowid integer primary key autoincrement, type integer, stroke text, candidate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " text, posLeft integer, posRight integer, prevStroke text, prevCandidate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " text, prevPosLeft integer, prevPosRight integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "sqlStr":Ljava/lang/String;
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2e

    .line 278
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 280
    :cond_2e
    return-void
.end method

.method protected createQuery(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;II)V
    .registers 15
    .param p1, "keyString"    # Ljava/lang/String;
    .param p2, "wnnWord"    # Ljp/co/omronsoft/openwnn/WnnWord;
    .param p3, "operation"    # I
    .param p4, "order"    # I

    .prologue
    .line 398
    const/4 v7, 0x2

    if-eq p3, v7, :cond_4

    .line 399
    const/4 p2, 0x0

    .line 402
    :cond_4
    packed-switch p3, :pswitch_data_d4

    .line 463
    const/4 v7, 0x0

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 464
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    .line 529
    :cond_d
    :goto_d
    return-void

    .line 404
    :pswitch_e
    iget-object v5, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQuerySqlOrderByFreq:Ljava/lang/String;

    .line 405
    .local v5, "querySqlOrderByFreq":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQuerySqlOrderByKey:Ljava/lang/String;

    .line 406
    .local v6, "querySqlOrderByKey":Ljava/lang/String;
    const/4 v2, 0x0

    .line 407
    .local v2, "newTypeOfQuery":I
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mExactQueryArgs:[Ljava/lang/String;

    .line 409
    .local v3, "queryArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    aput-object p1, v3, v7

    .line 469
    :goto_18
    const/4 v7, 0x0

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 471
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v7, :cond_23

    iget v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mTypeOfQuery:I

    if-eq v7, v2, :cond_b6

    .line 476
    :cond_23
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    .line 479
    packed-switch p4, :pswitch_data_de

    goto :goto_d

    .line 481
    :pswitch_2a
    :try_start_2a
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteCursor;

    iput-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_2a .. :try_end_34} :catch_ad

    .line 495
    :goto_34
    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mTypeOfQuery:I

    .line 511
    :goto_36
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v7, :cond_d

    .line 514
    :try_start_3a
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v7

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I
    :try_end_42
    .catch Landroid/database/SQLException; {:try_start_3a .. :try_end_42} :catch_cb

    .line 520
    iget v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-nez v7, :cond_d

    .line 525
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    goto :goto_d

    .line 415
    .end local v2    # "newTypeOfQuery":I
    .end local v3    # "queryArgs":[Ljava/lang/String;
    .end local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    .end local v6    # "querySqlOrderByKey":Ljava/lang/String;
    :pswitch_4c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x14

    if-gt v7, v8, :cond_7e

    .line 416
    if-eqz p2, :cond_78

    .line 417
    iget-object v5, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastLinkQuerySqlOrderByFreq:Ljava/lang/String;

    .line 418
    .restart local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastLinkQuerySqlOrderByKey:Ljava/lang/String;

    .line 419
    .restart local v6    # "querySqlOrderByKey":Ljava/lang/String;
    const/4 v2, 0x1

    .line 425
    .restart local v2    # "newTypeOfQuery":I
    :goto_5b
    const/16 v1, 0x14

    .line 441
    .local v1, "maxBindsOfQuery":I
    :goto_5d
    if-eqz p2, :cond_99

    .line 446
    iget-wide v8, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const/4 v7, 0x6

    invoke-static {v8, v9, p1, v1, v7}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->createBindArray(JLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v4

    .line 449
    .local v4, "queryArgsTemp":[Ljava/lang/String;
    array-length v7, v4

    add-int/lit8 v7, v7, 0x2

    new-array v3, v7, [Ljava/lang/String;

    .line 450
    .restart local v3    # "queryArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6c
    array-length v7, v4

    if-ge v0, v7, :cond_8e

    .line 451
    add-int/lit8 v7, v0, 0x2

    aget-object v8, v4, v0

    aput-object v8, v3, v7

    .line 450
    add-int/lit8 v0, v0, 0x1

    goto :goto_6c

    .line 421
    .end local v0    # "i":I
    .end local v1    # "maxBindsOfQuery":I
    .end local v2    # "newTypeOfQuery":I
    .end local v3    # "queryArgs":[Ljava/lang/String;
    .end local v4    # "queryArgsTemp":[Ljava/lang/String;
    .end local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    .end local v6    # "querySqlOrderByKey":Ljava/lang/String;
    :cond_78
    iget-object v5, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastPrefixQuerySqlOrderByFreq:Ljava/lang/String;

    .line 422
    .restart local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFastPrefixQuerySqlOrderByKey:Ljava/lang/String;

    .line 423
    .restart local v6    # "querySqlOrderByKey":Ljava/lang/String;
    const/4 v2, 0x2

    .restart local v2    # "newTypeOfQuery":I
    goto :goto_5b

    .line 428
    .end local v2    # "newTypeOfQuery":I
    .end local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    .end local v6    # "querySqlOrderByKey":Ljava/lang/String;
    :cond_7e
    if-eqz p2, :cond_88

    .line 429
    iget-object v5, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullLinkQuerySqlOrderByFreq:Ljava/lang/String;

    .line 430
    .restart local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullLinkQuerySqlOrderByKey:Ljava/lang/String;

    .line 431
    .restart local v6    # "querySqlOrderByKey":Ljava/lang/String;
    const/4 v2, 0x3

    .line 437
    .restart local v2    # "newTypeOfQuery":I
    :goto_85
    const/16 v1, 0x32

    .restart local v1    # "maxBindsOfQuery":I
    goto :goto_5d

    .line 433
    .end local v1    # "maxBindsOfQuery":I
    .end local v2    # "newTypeOfQuery":I
    .end local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    .end local v6    # "querySqlOrderByKey":Ljava/lang/String;
    :cond_88
    iget-object v5, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullPrefixQuerySqlOrderByFreq:Ljava/lang/String;

    .line 434
    .restart local v5    # "querySqlOrderByFreq":Ljava/lang/String;
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFullPrefixQuerySqlOrderByKey:Ljava/lang/String;

    .line 435
    .restart local v6    # "querySqlOrderByKey":Ljava/lang/String;
    const/4 v2, 0x4

    .restart local v2    # "newTypeOfQuery":I
    goto :goto_85

    .line 454
    .restart local v0    # "i":I
    .restart local v1    # "maxBindsOfQuery":I
    .restart local v3    # "queryArgs":[Ljava/lang/String;
    .restart local v4    # "queryArgsTemp":[Ljava/lang/String;
    :cond_8e
    const/4 v7, 0x0

    iget-object v8, p2, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    aput-object v8, v3, v7

    .line 455
    const/4 v7, 0x1

    iget-object v8, p2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    aput-object v8, v3, v7

    goto :goto_18

    .line 457
    .end local v0    # "i":I
    .end local v3    # "queryArgs":[Ljava/lang/String;
    .end local v4    # "queryArgsTemp":[Ljava/lang/String;
    :cond_99
    iget-wide v8, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const/4 v7, 0x6

    invoke-static {v8, v9, p1, v1, v7}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->createBindArray(JLjava/lang/String;II)[Ljava/lang/String;

    move-result-object v3

    .line 460
    .restart local v3    # "queryArgs":[Ljava/lang/String;
    goto/16 :goto_18

    .line 484
    .end local v1    # "maxBindsOfQuery":I
    :pswitch_a2
    :try_start_a2
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7, v6, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    check-cast v7, Landroid/database/sqlite/SQLiteCursor;

    iput-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;
    :try_end_ac
    .catch Landroid/database/SQLException; {:try_start_a2 .. :try_end_ac} :catch_ad

    goto :goto_34

    .line 490
    :catch_ad
    move-exception v7

    const/4 v7, 0x0

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 491
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    goto/16 :goto_d

    .line 502
    :cond_b6
    :try_start_b6
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteCursor;->setSelectionArguments([Ljava/lang/String;)V

    .line 503
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteCursor;->requery()Z
    :try_end_c0
    .catch Landroid/database/SQLException; {:try_start_b6 .. :try_end_c0} :catch_c2

    goto/16 :goto_36

    .line 505
    :catch_c2
    move-exception v7

    const/4 v7, 0x0

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 506
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    goto/16 :goto_d

    .line 516
    :catch_cb
    move-exception v7

    const/4 v7, 0x0

    iput v7, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 517
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    goto/16 :goto_d

    .line 402
    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_4c
        :pswitch_4c
    .end packed-switch

    .line 479
    :pswitch_data_de
    .packed-switch 0x0
        :pswitch_2a
        :pswitch_a2
    .end packed-switch
.end method

.method protected finalize()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 254
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_12

    .line 255
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->freeWnnWork(J)I

    .line 256
    iput-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    .line 258
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeDatabase()V

    .line 260
    :cond_12
    return-void
.end method

.method protected freeCursor()V
    .registers 2

    .prologue
    .line 299
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v0, :cond_f

    .line 301
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 302
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mTypeOfQuery:I

    .line 306
    :cond_f
    return-void
.end method

.method protected freeDatabase()V
    .registers 2

    .prologue
    .line 286
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeCursor()V

    .line 288
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_f

    .line 290
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 291
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    .line 293
    :cond_f
    return-void
.end method

.method public getConnectMatrix()[[B
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 798
    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_29

    .line 800
    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v4, v5}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getNumberOfLeftPOS(J)I

    move-result v1

    .line 801
    .local v1, "lcount":I
    add-int/lit8 v3, v1, 0x1

    new-array v2, v3, [[B

    .line 804
    .local v2, "result":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    add-int/lit8 v3, v1, 0x1

    if-ge v0, v3, :cond_35

    .line 805
    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v4, v5, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getConnectArray(JI)[B

    move-result-object v3

    aput-object v3, v2, v0

    .line 807
    aget-object v3, v2, v0

    if-nez v3, :cond_26

    .line 808
    const/4 v3, 0x0

    .line 815
    .end local v0    # "i":I
    .end local v1    # "lcount":I
    :goto_25
    return-object v3

    .line 804
    .restart local v0    # "i":I
    .restart local v1    # "lcount":I
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 813
    .end local v0    # "i":I
    .end local v1    # "lcount":I
    .end local v2    # "result":[[B
    :cond_29
    filled-new-array {v8, v8}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    .restart local v2    # "result":[[B
    :cond_35
    move-object v3, v2

    .line 815
    goto :goto_25
.end method

.method public getNextWord()Ljp/co/omronsoft/openwnn/WnnWord;
    .registers 2

    .prologue
    .line 628
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->getNextWord(I)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v0

    return-object v0
.end method

.method public getNextWord(I)Ljp/co/omronsoft/openwnn/WnnWord;
    .registers 12
    .param p1, "length"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 635
    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_f5

    .line 636
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_5d

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v3, :cond_5d

    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-lez v3, :cond_5d

    .line 641
    new-instance v1, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {v1}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 647
    .local v1, "result":Ljp/co/omronsoft/openwnn/WnnWord;
    :goto_1c
    :try_start_1c
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-lez v3, :cond_97

    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    if-gez v3, :cond_2d

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x4

    .line 648
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_49

    :cond_2d
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    if-gez v3, :cond_3a

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x4

    .line 649
    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v3

    if-eq v3, v9, :cond_49

    :cond_3a
    if-lez p1, :cond_97

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 651
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, p1, :cond_97

    .line 652
    :cond_49
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    .line 653
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I
    :try_end_54
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_54} :catch_55

    goto :goto_1c

    .line 688
    :catch_55
    move-exception v3

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    .line 689
    iput v8, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    .line 695
    .end local v1    # "result":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_5d
    :goto_5d
    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v4, v5, p1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getNextWord(JI)I

    move-result v0

    .line 696
    .local v0, "res":I
    if-lez v0, :cond_ef

    .line 697
    new-instance v1, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {v1}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    .line 699
    .restart local v1    # "result":Ljp/co/omronsoft/openwnn/WnnWord;
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getStroke(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 700
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getCandidate(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 701
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getFrequency(J)I

    move-result v2

    iput v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    .line 702
    iget-object v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v4, v5}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getLeftPartOfSpeech(J)I

    move-result v3

    iput v3, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 703
    iget-object v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-wide v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v4, v5}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getRightPartOfSpeech(J)I

    move-result v3

    iput v3, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 714
    .end local v0    # "res":I
    .end local v1    # "result":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_96
    :goto_96
    return-object v1

    .line 656
    .restart local v1    # "result":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_97
    :try_start_97
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-lez v3, :cond_e8

    .line 658
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 659
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 660
    iget-object v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 661
    iget-object v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v4

    iput v4, v3, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 663
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v3

    if-nez v3, :cond_e3

    .line 664
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    iput v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    .line 673
    :goto_d0
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    .line 674
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-gtz v3, :cond_96

    .line 675
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    goto :goto_96

    .line 666
    :cond_e3
    iget v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    iput v3, v1, Ljp/co/omronsoft/openwnn/WnnWord;->frequency:I

    goto :goto_d0

    .line 684
    :cond_e8
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V
    :try_end_ed
    .catch Landroid/database/SQLException; {:try_start_97 .. :try_end_ed} :catch_55

    goto/16 :goto_5d

    .line 706
    .end local v1    # "result":Ljp/co/omronsoft/openwnn/WnnWord;
    .restart local v0    # "res":I
    :cond_ef
    if-nez v0, :cond_f3

    move-object v1, v2

    .line 708
    goto :goto_96

    :cond_f3
    move-object v1, v2

    .line 711
    goto :goto_96

    .end local v0    # "res":I
    :cond_f5
    move-object v1, v2

    .line 714
    goto :goto_96
.end method

.method public getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;
    .registers 8
    .param p1, "type"    # I

    .prologue
    .line 822
    new-instance v0, Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/WnnPOS;-><init>()V

    .line 824
    .local v0, "result":Ljp/co/omronsoft/openwnn/WnnPOS;
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_26

    .line 825
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3, p1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getLeftPartOfSpeechSpecifiedType(JI)I

    move-result v1

    iput v1, v0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    .line 827
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3, p1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->getRightPartOfSpeechSpecifiedType(JI)I

    move-result v1

    iput v1, v0, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    .line 830
    iget v1, v0, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    if-ltz v1, :cond_25

    iget v1, v0, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    if-gez v1, :cond_26

    .line 831
    :cond_25
    const/4 v0, 0x0

    .line 834
    .end local v0    # "result":Ljp/co/omronsoft/openwnn/WnnPOS;
    :cond_26
    return-object v0
.end method

.method public getUserDictionaryWords()[Ljp/co/omronsoft/openwnn/WnnWord;
    .registers 16

    .prologue
    const/4 v14, 0x0

    .line 722
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7e

    iget-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_7e

    .line 724
    const/4 v10, 0x0

    .line 728
    .local v10, "cursor":Landroid/database/sqlite/SQLiteCursor;
    :try_start_e
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "dic"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "stroke"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "candidate"

    aput-object v6, v4, v5

    const-string/jumbo v5, "%s=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "type"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 731
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 728
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v10, v0

    .line 732
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v12

    .line 734
    .local v12, "numOfWords":I
    if-lez v12, :cond_79

    .line 736
    new-array v13, v12, [Ljp/co/omronsoft/openwnn/WnnWord;

    .line 738
    .local v13, "words":[Ljp/co/omronsoft/openwnn/WnnWord;
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 739
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_52
    if-ge v11, v12, :cond_73

    .line 740
    new-instance v2, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {v2}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>()V

    aput-object v2, v13, v11

    .line 741
    aget-object v2, v13, v11

    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 742
    aget-object v2, v13, v11

    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 743
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z
    :try_end_70
    .catch Landroid/database/SQLException; {:try_start_e .. :try_end_70} :catch_80
    .catchall {:try_start_e .. :try_end_70} :catchall_88

    .line 739
    add-int/lit8 v11, v11, 0x1

    goto :goto_52

    .line 752
    :cond_73
    if-eqz v10, :cond_78

    .line 753
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 757
    .end local v10    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .end local v11    # "i":I
    .end local v12    # "numOfWords":I
    .end local v13    # "words":[Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_78
    :goto_78
    return-object v13

    .line 752
    .restart local v10    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .restart local v12    # "numOfWords":I
    :cond_79
    if-eqz v10, :cond_7e

    .line 753
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .end local v10    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .end local v12    # "numOfWords":I
    :cond_7e
    move-object v13, v14

    .line 757
    goto :goto_78

    .line 752
    .restart local v10    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    :catch_80
    move-exception v2

    if-eqz v10, :cond_86

    .line 753
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->close()V

    :cond_86
    move-object v13, v14

    goto :goto_78

    .line 752
    :catchall_88
    move-exception v2

    if-eqz v10, :cond_8e

    .line 753
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteCursor;->close()V

    :cond_8e
    throw v2
.end method

.method public isActive()Z
    .registers 5

    .prologue
    .line 312
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public learnWord(Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 3
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 1010
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->learnWord(Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v0

    return v0
.end method

.method public learnWord(Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 28
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;
    .param p2, "previousWord"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 1023
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_3c0

    .line 1024
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v20, "previousStrokeSQL":Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 1026
    .local v19, "previousCandidateSQL":Ljava/lang/StringBuilder;
    const/4 v15, 0x0

    .line 1028
    .local v15, "isConnectLearn":Z
    if-eqz p2, :cond_52

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 1029
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_52

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 1030
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_52

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 1031
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_52

    .line 1032
    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1038
    const/4 v15, 0x1

    .line 1041
    :cond_52
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3c0

    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3c0

    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 1042
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3c0

    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 1043
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-gt v1, v2, :cond_3c0

    .line 1044
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1045
    .local v21, "strokeSQL":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    .local v9, "candidateSQL":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1047
    move-object/from16 v0, p1

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "rowid"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "stroke"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "candidate"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "posLeft"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "posRight"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "prevStroke"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "prevCandidate"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "prevPosLeft"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    const-string/jumbo v5, "prevPosRight"

    aput-object v5, v3, v4

    const-string/jumbo v4, "%s=%d and %s=%s and %s=%s"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1065
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "stroke"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    .line 1066
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "candidate"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    .line 1067
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 1065
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "%s ASC"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "rowid"

    aput-object v24, v22, v23

    .line 1067
    move-object/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1055
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    check-cast v11, Landroid/database/sqlite/SQLiteCursor;

    .line 1070
    .local v11, "cursor":Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v1

    if-lez v1, :cond_253

    .line 1075
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 1077
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1078
    .local v10, "content":Landroid/content/ContentValues;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v1

    new-array v12, v1, [I

    .line 1079
    .local v12, "idArray":[I
    const/4 v13, 0x0

    .line 1081
    .local v13, "idIndex":I
    const/16 v16, 0x0

    .line 1083
    .local v16, "isExistConnectLearnData":Z
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :cond_14b
    move v14, v13

    .line 1087
    .end local v13    # "idIndex":I
    .local v14, "idIndex":I
    add-int/lit8 v13, v14, 0x1

    .end local v14    # "idIndex":I
    .restart local v13    # "idIndex":I
    const/4 v1, 0x0

    :try_start_14f
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v1

    aput v1, v12, v14

    .line 1090
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1091
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1092
    const-string/jumbo v1, "stroke"

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const-string/jumbo v1, "candidate"

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v1, "posLeft"

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1095
    const-string/jumbo v1, "posRight"

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1096
    const-string/jumbo v1, "prevStroke"

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v1, "prevCandidate"

    const/4 v2, 0x6

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    const-string/jumbo v1, "prevPosLeft"

    const/4 v2, 0x7

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1099
    const-string/jumbo v1, "prevPosRight"

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1100
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1106
    if-eqz v15, :cond_1f9

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    move-object/from16 v0, p2

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    const/4 v2, 0x6

    .line 1107
    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f9

    .line 1108
    const/16 v16, 0x1

    .line 1110
    :cond_1f9
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_14b

    .line 1113
    :goto_1ff
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_235

    .line 1114
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const-string/jumbo v3, "%s=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "rowid"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aget v6, v12, v13

    .line 1115
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1114
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_227
    .catch Landroid/database/SQLException; {:try_start_14f .. :try_end_227} :catch_228
    .catchall {:try_start_14f .. :try_end_227} :catchall_3c3

    goto :goto_1ff

    .line 1134
    :catch_228
    move-exception v1

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1135
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    const/4 v1, -0x1

    .line 1212
    .end local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .end local v10    # "content":Landroid/content/ContentValues;
    .end local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .end local v12    # "idArray":[I
    .end local v13    # "idIndex":I
    .end local v15    # "isConnectLearn":Z
    .end local v16    # "isExistConnectLearnData":Z
    .end local v19    # "previousCandidateSQL":Ljava/lang/StringBuilder;
    .end local v20    # "previousStrokeSQL":Ljava/lang/StringBuilder;
    .end local v21    # "strokeSQL":Ljava/lang/StringBuilder;
    :goto_234
    return v1

    .line 1118
    .restart local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .restart local v10    # "content":Landroid/content/ContentValues;
    .restart local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .restart local v12    # "idArray":[I
    .restart local v13    # "idIndex":I
    .restart local v15    # "isConnectLearn":Z
    .restart local v16    # "isExistConnectLearnData":Z
    .restart local v19    # "previousCandidateSQL":Ljava/lang/StringBuilder;
    .restart local v20    # "previousStrokeSQL":Ljava/lang/StringBuilder;
    .restart local v21    # "strokeSQL":Ljava/lang/StringBuilder;
    :cond_235
    :try_start_235
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_23c
    .catch Landroid/database/SQLException; {:try_start_235 .. :try_end_23c} :catch_228
    .catchall {:try_start_235 .. :try_end_23c} :catchall_3c3

    .line 1128
    if-eqz v15, :cond_240

    if-eqz v16, :cond_24c

    .line 1134
    :cond_240
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1135
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    const/4 v1, 0x0

    goto :goto_234

    .line 1134
    :cond_24c
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1138
    .end local v10    # "content":Landroid/content/ContentValues;
    .end local v12    # "idArray":[I
    .end local v13    # "idIndex":I
    .end local v16    # "isExistConnectLearnData":Z
    :cond_253
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 1145
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "stroke"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "candidate"

    aput-object v5, v3, v4

    const-string/jumbo v4, "%s=%d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "type"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 1148
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "%s ASC"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "rowid"

    aput-object v24, v22, v23

    .line 1149
    move-object/from16 v0, v22

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1145
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .end local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    check-cast v11, Landroid/database/sqlite/SQLiteCursor;

    .line 1151
    .restart local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->getCount()I

    move-result v1

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_320

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1158
    :try_start_2b4
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z

    .line 1160
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1161
    .local v18, "oldestStrokeSQL":Ljava/lang/StringBuilder;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1162
    .local v17, "oldestCandidateSQL":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1163
    const/4 v1, 0x1

    .line 1164
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1163
    move-object/from16 v0, v17

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1166
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const-string/jumbo v3, "%s=%d and %s=%s and %s=%s"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "type"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 1167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "stroke"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    .line 1168
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string/jumbo v6, "candidate"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    .line 1169
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1166
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1171
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_319
    .catch Landroid/database/SQLException; {:try_start_2b4 .. :try_end_319} :catch_3cf
    .catchall {:try_start_2b4 .. :try_end_319} :catchall_3dd

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1179
    .end local v17    # "oldestCandidateSQL":Ljava/lang/StringBuilder;
    .end local v18    # "oldestStrokeSQL":Ljava/lang/StringBuilder;
    :cond_320
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 1183
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1185
    .restart local v10    # "content":Landroid/content/ContentValues;
    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    .line 1186
    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1187
    const-string/jumbo v1, "stroke"

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string/jumbo v1, "candidate"

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v1, "posLeft"

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1190
    const-string/jumbo v1, "posRight"

    move-object/from16 v0, p1

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1191
    if-eqz p2, :cond_3a0

    .line 1192
    const-string/jumbo v1, "prevStroke"

    move-object/from16 v0, p2

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v1, "prevCandidate"

    move-object/from16 v0, p2

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v1, "prevPosLeft"

    move-object/from16 v0, p2

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    const-string/jumbo v1, "prevPosRight"

    move-object/from16 v0, p2

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v2, v2, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1198
    :cond_3a0
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1200
    :try_start_3a7
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "dic"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1201
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3b9
    .catch Landroid/database/SQLException; {:try_start_3a7 .. :try_end_3b9} :catch_3e9
    .catchall {:try_start_3a7 .. :try_end_3b9} :catchall_3fb

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1212
    .end local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .end local v10    # "content":Landroid/content/ContentValues;
    .end local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .end local v15    # "isConnectLearn":Z
    .end local v19    # "previousCandidateSQL":Ljava/lang/StringBuilder;
    .end local v20    # "previousStrokeSQL":Ljava/lang/StringBuilder;
    .end local v21    # "strokeSQL":Ljava/lang/StringBuilder;
    :cond_3c0
    const/4 v1, 0x0

    goto/16 :goto_234

    .line 1134
    .restart local v9    # "candidateSQL":Ljava/lang/StringBuilder;
    .restart local v10    # "content":Landroid/content/ContentValues;
    .restart local v11    # "cursor":Landroid/database/sqlite/SQLiteCursor;
    .restart local v12    # "idArray":[I
    .restart local v13    # "idIndex":I
    .restart local v15    # "isConnectLearn":Z
    .restart local v16    # "isExistConnectLearnData":Z
    .restart local v19    # "previousCandidateSQL":Ljava/lang/StringBuilder;
    .restart local v20    # "previousStrokeSQL":Ljava/lang/StringBuilder;
    .restart local v21    # "strokeSQL":Ljava/lang/StringBuilder;
    :catchall_3c3
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1135
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    throw v1

    .line 1175
    .end local v10    # "content":Landroid/content/ContentValues;
    .end local v12    # "idArray":[I
    .end local v13    # "idIndex":I
    .end local v16    # "isExistConnectLearnData":Z
    :catch_3cf
    move-exception v1

    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1176
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    const/4 v1, -0x1

    goto/16 :goto_234

    .line 1175
    :catchall_3dd
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1176
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteCursor;->close()V

    throw v1

    .line 1203
    .restart local v10    # "content":Landroid/content/ContentValues;
    :catch_3e9
    move-exception v1

    :try_start_3ea
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3f1
    .catchall {:try_start_3ea .. :try_end_3f1} :catchall_3fb

    .line 1206
    move-object/from16 v0, p0

    iget-object v1, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v1, -0x1

    goto/16 :goto_234

    :catchall_3fb
    move-exception v1

    move-object/from16 v0, p0

    iget-object v2, v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method public removeWordFromUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 4
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 1000
    const/4 v1, 0x1

    new-array v0, v1, [Ljp/co/omronsoft/openwnn/WnnWord;

    .line 1001
    .local v0, "words":[Ljp/co/omronsoft/openwnn/WnnWord;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1003
    invoke-virtual {p0, v0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->removeWordFromUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v1

    return v1
.end method

.method public removeWordFromUserDictionary([Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 13
    .param p1, "word"    # [Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/16 v10, 0x32

    const/4 v3, 0x0

    .line 961
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_98

    .line 963
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 965
    :try_start_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 966
    .local v2, "strokeSQL":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 968
    .local v0, "candidateSQL":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_17
    array-length v4, p1

    if-ge v1, v4, :cond_8e

    .line 969
    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8b

    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    .line 970
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v10, :cond_8b

    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 971
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_8b

    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 972
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v10, :cond_8b

    .line 973
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 974
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 975
    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 976
    aget-object v4, p1, v1

    iget-object v4, v4, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 978
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v5, "dic"

    const-string/jumbo v6, "%s=%d and %s=%s and %s=%s"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 979
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "stroke"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "candidate"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object v0, v7, v8

    .line 978
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 968
    :cond_8b
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 983
    :cond_8e
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_93
    .catch Landroid/database/SQLException; {:try_start_c .. :try_end_93} :catch_99
    .catchall {:try_start_c .. :try_end_93} :catchall_a1

    .line 988
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 993
    .end local v0    # "candidateSQL":Ljava/lang/StringBuilder;
    .end local v1    # "index":I
    .end local v2    # "strokeSQL":Ljava/lang/StringBuilder;
    :cond_98
    :goto_98
    return v3

    .line 988
    :catch_99
    move-exception v3

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    const/4 v3, -0x1

    goto :goto_98

    :catchall_a1
    move-exception v3

    iget-object v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public searchWord(IILjava/lang/String;)I
    .registers 10
    .param p1, "operation"    # I
    .param p2, "order"    # I
    .param p3, "keyString"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 537
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->clearResult(J)V

    .line 540
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_53

    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    if-gez v1, :cond_12

    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    if-ltz v1, :cond_53

    .line 543
    :cond_12
    :try_start_12
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_39

    .line 544
    const/4 v1, 0x0

    invoke-virtual {p0, p3, v1, p1, p2}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->createQuery(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;II)V

    .line 545
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_25

    .line 546
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z
    :try_end_25
    .catch Landroid/database/SQLException; {:try_start_12 .. :try_end_25} :catch_46

    .line 566
    :cond_25
    :goto_25
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_56

    .line 567
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3, p1, p2, p3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->searchWord(JIILjava/lang/String;)I

    move-result v0

    .line 569
    .local v0, "ret":I
    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-lez v1, :cond_38

    .line 570
    const/4 v0, 0x1

    .line 574
    .end local v0    # "ret":I
    :cond_38
    :goto_38
    return v0

    .line 550
    :cond_39
    :try_start_39
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_42

    .line 551
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    .line 553
    :cond_42
    const/4 v1, 0x0

    iput v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I
    :try_end_45
    .catch Landroid/database/SQLException; {:try_start_39 .. :try_end_45} :catch_46

    goto :goto_25

    .line 556
    :catch_46
    move-exception v1

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_50

    .line 557
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    .line 559
    :cond_50
    iput v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    goto :goto_25

    .line 562
    :cond_53
    iput v4, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    goto :goto_25

    .line 574
    :cond_56
    const/4 v0, -0x1

    goto :goto_38
.end method

.method public searchWord(IILjava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;)I
    .registers 11
    .param p1, "operation"    # I
    .param p2, "order"    # I
    .param p3, "keyString"    # Ljava/lang/String;
    .param p4, "wnnWord"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 582
    if-eqz p4, :cond_8

    iget-object v1, p4, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    if-nez v1, :cond_9

    .line 620
    :cond_8
    :goto_8
    return v0

    .line 587
    :cond_9
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_6c

    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    if-gez v1, :cond_15

    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    if-ltz v1, :cond_6c

    .line 590
    :cond_15
    :try_start_15
    invoke-virtual {p0, p3, p4, p1, p2}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->createQuery(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;II)V

    .line 591
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_21

    .line 592
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->moveToFirst()Z
    :try_end_21
    .catch Landroid/database/SQLException; {:try_start_15 .. :try_end_21} :catch_5f

    .line 605
    :cond_21
    :goto_21
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->clearResult(J)V

    .line 606
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    iget-object v1, p4, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setStroke(JLjava/lang/String;)I

    .line 607
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    iget-object v1, p4, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setCandidate(JLjava/lang/String;)I

    .line 608
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    iget-object v1, p4, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v1, v1, Ljp/co/omronsoft/openwnn/WnnPOS;->left:I

    invoke-static {v2, v3, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setLeftPartOfSpeech(JI)I

    .line 609
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    iget-object v1, p4, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v1, v1, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    invoke-static {v2, v3, v1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setRightPartOfSpeech(JI)I

    .line 610
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->selectWord(J)I

    .line 612
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_8

    .line 613
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v2, v3, p1, p2, p3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->searchWord(JIILjava/lang/String;)I

    move-result v0

    .line 615
    .local v0, "ret":I
    iget v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    if-lez v1, :cond_8

    .line 616
    const/4 v0, 0x1

    goto :goto_8

    .line 595
    .end local v0    # "ret":I
    :catch_5f
    move-exception v1

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    if-eqz v1, :cond_69

    .line 596
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbCursor:Landroid/database/sqlite/SQLiteCursor;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteCursor;->deactivate()V

    .line 598
    :cond_69
    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    goto :goto_21

    .line 601
    :cond_6c
    iput v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mCountCursor:I

    goto :goto_21
.end method

.method public setApproxPattern(I)I
    .registers 6
    .param p1, "approxPattern"    # I

    .prologue
    .line 784
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 785
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1, p1}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setApproxPattern(JI)I

    move-result v0

    .line 787
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public setApproxPattern(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    .line 773
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 774
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1, p1, p2}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setApproxPattern(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 776
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public setDictionary(III)I
    .registers 10
    .param p1, "index"    # I
    .param p2, "base"    # I
    .param p3, "high"    # I

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 351
    iget-wide v2, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2c

    .line 352
    packed-switch p1, :pswitch_data_2e

    .line 373
    iget-wide v0, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mWnnWork:J

    invoke-static {v0, v1, p1, p2, p3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImplJni;->setDictionaryParameter(JIII)I

    move-result v0

    .line 377
    :goto_13
    return v0

    .line 354
    :pswitch_14
    if-ltz p2, :cond_1a

    if-ltz p3, :cond_1a

    if-le p2, p3, :cond_1d

    .line 359
    :cond_1a
    iput v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    goto :goto_13

    .line 361
    :cond_1d
    iput p3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfUserDictionary:I

    goto :goto_13

    .line 365
    :pswitch_20
    if-ltz p2, :cond_26

    if-ltz p3, :cond_26

    if-le p2, p3, :cond_29

    .line 367
    :cond_26
    iput v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    goto :goto_13

    .line 369
    :cond_29
    iput p3, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mFrequencyOffsetOfLearnDictionary:I

    goto :goto_13

    :cond_2c
    move v0, v1

    .line 377
    goto :goto_13

    .line 352
    :pswitch_data_2e
    .packed-switch -0x2
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method public setInUseState(Z)Z
    .registers 5
    .param p1, "flag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 319
    if-eqz p1, :cond_17

    .line 321
    :try_start_3
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_10

    .line 322
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDicFilePath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_10
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_10} :catch_1b

    .line 326
    :cond_10
    :goto_10
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->mDbDic:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_15

    .line 330
    :goto_14
    return v0

    .line 326
    :cond_15
    const/4 v0, 0x0

    goto :goto_14

    .line 328
    :cond_17
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;->freeDatabase()V

    goto :goto_14

    :catch_1b
    move-exception v1

    goto :goto_10
.end method
